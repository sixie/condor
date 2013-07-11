#!/bin/tcsh
#===================================================================================================
# Submit a set of jobs to run over a given dataset, splitting the jobs according to the filesets.
#
# Version 1.0                                                                      November 14, 2008
#===================================================================================================



#############
#
# Electron Ntuples from Z->EE Gamma
#
#############




#############
#MC
#############HZZ4l/LeptonSelection/Electrons/MakeRealElectronTrainingNtupleFromZeeGamma.C

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithZeeGammaStudy_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithZeeGammaStudy_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/LeptonSelection/Electrons/ MakeMCElectronTrainingNtupleFromZeeGamma.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"ElectronSelectionTraining.MC_ZeeGamma.${file}\",kTRUE\) ElectronSelectionTraining.MC_ZeeGamma.${file} /afs/cern.ch/work/s/sixie/public/LeptonSelection/Electrons/
  sleep 1
end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/MakeRealElectronTrainingNtupleFromZeeGamma_${file}.out -J MakeElectronNtuples_ZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/LeptonSelection/Electrons/ MakeRealElectronTrainingNtupleFromZeeGamma.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"ElectronSelectionTraining.Real_ZeeGamma.${file}.root\",0\) ElectronSelectionTraining.Real_ZeeGamma.${file}.root /afs/cern.ch/work/s/sixie/public/LeptonSelection/Electrons/
  sleep 1
end


foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/fileListEGamma2 | grep sel | grep HZZ `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/MakeRealElectronTrainingNtupleFromZeeGamma_${file}.out -J MakeElectronNtuples_ZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/LeptonSelection/Electrons/ MakeRealElectronTrainingNtupleFromZeeGamma.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"ElectronSelectionTraining.Real_ZeeGamma.${file}.root\",1\) ElectronSelectionTraining.Real_ZeeGamma.${file}.root /afs/cern.ch/work/s/sixie/public/LeptonSelection/Electrons/
  sleep 1
end
