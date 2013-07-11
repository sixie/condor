#include <string.h>
#include "TChain.h"
#include "TFile.h"
#include "TH1.h"
#include "TTree.h"
#include "TKey.h"
#include "Riostream.h"

cast(TString infile){
  TString infile2=TString("b")+infile;
  TFile * Target=TFile::Open(infile2,"RECREATE");
  TFile *file = new TFile(infile);
  TDirectory *current_sourcedir = gDirectory;
  TChain *globChain = 0;
  TIter nextkey( current_sourcedir->GetListOfKeys() );
  TKey *key;
  while ( (key = (TKey*)nextkey())) {
      TObject *obj = key->ReadObj();
      TH1 *h1 = (TH1*)obj;
      if (obj ){
      Target->cd();
      	if(obj->IsA()->InheritsFrom( "TTree" ))
	  globChain->Write( key->GetName() );
	else
       h1->Write( h1->GetTitle() );
      }
  }
 
  Target->Write();    
}
