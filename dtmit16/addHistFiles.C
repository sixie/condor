//------------------------------------------------------------------------------
// Example of macro to add two histogram files containing the same histograms
// (in a directory structure) or ntuples/trees.
//
// Histograms are added in memory as well as profile histograms.
// ntuples and trees are merged.
// The resulting histograms are saved into a new file.
//
//------------------------------------------------------------------------------

// List of files to be merged. Last file must be a NULL string!!

const char *ifiles[] = {
  "/home/sixie/hist/MuonIsolationStudy/filler/004/MuonIsolationStudy_PtRange40ToInf_s8-incmu_5_50-id9_0000.root",
  "/home/sixie/hist/MuonIsolationStudy/filler/004/MuonIsolationStudy_PtRange40ToInf_s8-incmu_5_50-id9_0016.root",
  "/home/sixie/hist/MuonIsolationStudy/filler/004/MuonIsolationStudy_PtRange40ToInf_s8-incmu_5_50-id9_0017.root",
  "/home/sixie/hist/MuonIsolationStudy/filler/004/MuonIsolationStudy_PtRange40ToInf_s8-incmu_5_50-id9_0078.root",
  ""};                                      // leave this line as is

const char *ofile="/home/sixie/hist/MuonIsolationStudy/filler/004/MuonIsolationStudy_PtRange40ToInf.root";

TFile   *fnew;
TList   *flist;
TFile   *afile, *file1;

TH1     *h1, *h2;
TTree   *t1, *t2;
TObject *obj;
TKey    *key;

void addRecursive(TDirectory *root, TDirectory* node);

void addHistFiles() {

  // Create the result file
  fnew = new TFile(ofile,"RECREATE");

  // Create a list for input files
  flist = new TList();

  // Open all input files and insert them in the list of files
  Int_t nfiles = 0;
  while (strlen(ifiles[nfiles])) {
    afile = new TFile(ifiles[nfiles]);
    flist->Add(afile);
    nfiles++;
  }

  // Get pointer to first file
  afile = file1 = (TFile*)flist->First();

  addRecursive(fnew,file1);

  // Write the new file
  fnew->Write();
  fnew->Close();

  //delete fnew;
  //flist->Clear();
  //delete flist;
}

//______________________________________________________________________
//
//
//
//______________________________________________________________________
void addRecursive(TDirectory *root, TDirectory* node) {

  static TDirectory *dact;

  TDirectory *dirsav;

  // Create iterator to loop on all objects(keys) of first file
  TIter nextkey(node->GetListOfKeys());
  while (key = (TKey*)nextkey()) {
    node->cd();
    obj = key->ReadObj();
    if (obj->IsA()->InheritsFrom("TTree")) {  // TTree or TNtuple
      t1 = (TTree*)obj;
      // this part still to be implemented
      // use TChain::Merge instead
    }
    elseif(obj->IsA()->InheritsFrom("TH1")) { // TH1 or TProfile
      h1 = (TH1*)obj;
      afile = (TFile*)flist->After(file1);
      while (afile) { //loop on all files starting at second file
        char* base=strstr(root->GetPath(),":"); base+=2;
        //printf("base=%sn",base);
	
        dirsav=gDirectory;
        afile->cd(base);
        h2 = (TH1*)gDirectory->Get(h1->GetName());
        dirsav->cd();
        if (h2) { // here we should check that we can add
          //printf("adding histo %s to %sn",h2->GetName(),h1->GetName());
          h1->Add(h2);
          delete h2;
        }
        afile = (TFile*)flist->After(afile);
      }
    }
    elseif(obj->IsA()->InheritsFrom("TDirectory")) { // TDirectory
      // recursion
      // printf("Found TDirectory name=%s title=%sn",
      //     obj->GetName(),obj->GetTitle());
      root->cd();
      dact=root->mkdir(obj->GetName(),obj->GetTitle());
      dact->cd();
      TObject *objsave = obj;
      TKey    *keysave = key;      
      addRecursive(dact,(TDirectory*)obj);
      obj = objsave;
      key = keysave;
    }
    else { //another object
      printf("anotherobjname=%s, title=%sn",obj->GetName(),obj->GetTitle());
    }

    // write node object, modified or not into fnew
    if (obj) {
      root->cd();
      obj->Write(key->GetName());
      delete obj;
      obj = NULL;
    }
  }
  root->cd();
}
