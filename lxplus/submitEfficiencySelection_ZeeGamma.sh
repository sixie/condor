#!/bin/tcsh
#===================================================================================================
# Submit a set of jobs to run over a given dataset, splitting the jobs according to the filesets.
#
# Version 1.0                                                                      November 14, 2008
#===================================================================================================




#############
#
# HZZ ICHEP2012 WP with Z->ee+gamma
#
#############




#############
#MC
#############

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/fileListHiggsHZZ4l2 | grep HZZ4lNtuple | grep s12-zllm50-2-v9 `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithZeeGamma_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012WPWithZeeGamma/
  sleep 1
end

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/fileListHiggsHZZ4l2 | grep HZZ4lNtuple | grep s12-zllm50-2-v9 `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithZeeGammaBkg_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithZeeGammaBkg_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-2,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012WPWithZeeGammaBkg/
  sleep 1
end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/fileListEGamma2 | grep del | grep HZZ `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithZeeGamma_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,0,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012WPWithZeeGamma/
  sleep 1
end


foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/fileListEGamma2 | grep sel | grep HZZ `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithZeeGamma_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_SingleEle_EleHZZICHEP2012WPWithZeeGamma/
  sleep 1
end




#############
#
# HZZ ICHEP2012 IDGivenIso with Z->ee+gamma
#
#############




#############
#MC
#############

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IDGivenIsoWithZeeGamma_${file}.out -J Efficiency_selectEleHZZICHEP2012IDGivenIsoWithZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IDGivenIsoWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IDGivenIsoWithZeeGamma/
  sleep 1
end

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IDGivenIsoWithZeeGammaBkg_${file}.out -J Efficiency_selectEleHZZICHEP2012IDGivenIsoWithZeeGammaBkg_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IDGivenIsoWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-2,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IDGivenIsoWithZeeGammaBkg/
  sleep 1
end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IDGivenIsoWithZeeGamma_${file}.out -J Efficiency_selectEleHZZICHEP2012IDGivenIsoWithZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IDGivenIsoWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,0,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IDGivenIsoWithZeeGamma/
  sleep 1
end


foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/fileListEGamma2 | grep sel | grep HZZ `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IDGivenIsoWithZeeGamma_${file}.out -J Efficiency_selectEleHZZICHEP2012IDGivenIsoWithZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IDGivenIsoWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_SingleEle_EleHZZICHEP2012IDGivenIsoWithZeeGamma/
  sleep 1
end

#Merge
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IDGivenIsoWithZeeGamma/probes.del.root /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IDGivenIsoWithZeeGamma/*.root
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IDGivenIsoWithZeeGamma/probes.sel.root /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_SingleEle_EleHZZICHEP2012IDGivenIsoWithZeeGamma/*.root
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IDGivenIsoWithZeeGamma/probes.root  /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IDGivenIsoWithZeeGamma/probes.del.root  /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IDGivenIsoWithZeeGamma/probes.sel.root
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IDGivenIsoWithZeeGamma/probes.root /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IDGivenIsoWithZeeGamma/*.root
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IDGivenIsoWithZeeGammaBkg/probes.root /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IDGivenIsoWithZeeGammaBkg/*.root



#############
#
# HZZ ICHEP2012 IsoGivenID with Z->ee+gamma
#
#############




#############
#MC
#############

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IsoGivenIDWithZeeGamma_${file}.out -J Efficiency_selectEleHZZICHEP2012IsoGivenIDWithZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IsoGivenIDWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IsoGivenIDWithZeeGamma/
  sleep 1
end

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IsoGivenIDWithZeeGammaBkg_${file}.out -J Efficiency_selectEleHZZICHEP2012IsoGivenIDWithZeeGammaBkg_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IsoGivenIDWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-2,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IsoGivenIDWithZeeGammaBkg/
  sleep 1
end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IsoGivenIDWithZeeGamma_${file}.out -J Efficiency_selectEleHZZICHEP2012IsoGivenIDWithZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IsoGivenIDWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,0,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoGivenIDWithZeeGamma/
  sleep 1
end


foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/fileListEGamma2 | grep sel | grep HZZ `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IsoGivenIDWithZeeGamma_${file}.out -J Efficiency_selectEleHZZICHEP2012IsoGivenIDWithZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IsoGivenIDWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_SingleEle_EleHZZICHEP2012IsoGivenIDWithZeeGamma/
  sleep 1
end


#Merge
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoGivenIDWithZeeGamma/probes.del.root /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoGivenIDWithZeeGamma/*.root
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoGivenIDWithZeeGamma/probes.sel.root /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_SingleEle_EleHZZICHEP2012IsoGivenIDWithZeeGamma/*.root
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoGivenIDWithZeeGamma/probes.root  /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoGivenIDWithZeeGamma/probes.del.root  /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoGivenIDWithZeeGamma/probes.sel.root
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IsoGivenIDWithZeeGamma/probes.root /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IsoGivenIDWithZeeGamma/*.root
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IsoGivenIDWithZeeGammaBkg/probes.root /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IsoGivenIDWithZeeGammaBkg/*.root



#############
#
# HZZ ICHEP2012 Iso with Z->ee+gamma
#
#############




#############
#MC
#############

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IsoWithZeeGamma_${file}.out -J Efficiency_selectEleHZZICHEP2012IsoWithZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IsoWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IsoWithZeeGamma/
  sleep 1
end

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IsoWithZeeGammaBkg_${file}.out -J Efficiency_selectEleHZZICHEP2012IsoWithZeeGammaBkg_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IsoWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-2,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IsoWithZeeGammaBkg/
  sleep 1
end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IsoWithZeeGamma_${file}.out -J Efficiency_selectEleHZZICHEP2012IsoWithZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IsoWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,0,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoWithZeeGamma/
  sleep 1
end


foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/fileListEGamma2 | grep sel | grep HZZ `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IsoWithZeeGamma_${file}.out -J Efficiency_selectEleHZZICHEP2012IsoWithZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IsoWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_SingleEle_EleHZZICHEP2012IsoWithZeeGamma/
  sleep 1
end


#Merge
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoWithZeeGamma/probes.del.root /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoWithZeeGamma/*.root
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoWithZeeGamma/probes.sel.root /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_SingleEle_EleHZZICHEP2012IsoWithZeeGamma/*.root
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoWithZeeGamma/probes.root  /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoWithZeeGamma/probes.del.root  /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoWithZeeGamma/probes.sel.root
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IsoWithZeeGamma/probes.root /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IsoWithZeeGamma/*.root
hadd -f /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IsoWithZeeGammaBkg/probes.root /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IsoWithZeeGammaBkg/*.root








#############
#
# HZZ ICHEP2012 WP with Z->ee+gamma , Looser Selection
#
#############




#############
#MC
#############

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithZeeGammaLooseSelection_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithZeeGammaLooseSelection_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithZeeGammaLooseSelectionPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012WPWithZeeGammaLooseSelection/
  sleep 1
end

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithZeeGammaLooseSelectionBkg_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithZeeGammaLooseSelectionBkg_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithZeeGammaLooseSelectionPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-2,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012WPWithZeeGammaLooseSelectionBkg/
  sleep 1
end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithZeeGammaLooseSelection_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithZeeGammaLooseSelection_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithZeeGammaLooseSelectionPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,0,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012WPWithZeeGammaLooseSelection/
  sleep 1
end


foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/fileListEGamma2 | grep sel | grep HZZ `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithZeeGammaLooseSelection_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithZeeGammaLooseSelection_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithZeeGammaLooseSelectionPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_SingleEle_EleHZZICHEP2012WPWithZeeGammaLooseSelection/
  sleep 1
end





#############
#
# HZZ ICHEP2012 WP with Z->ee+gamma - Selection Studies
#
#############




#############
#MC
#############

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithZeeGammaStudy_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithZeeGammaStudy_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithZeeGammaStudyPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012WPWithZeeGammaStudy/
  sleep 1
end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithZeeGammaStudy_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithZeeGammaStudy_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithZeeGammaStudyPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,0,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012WPWithZeeGammaStudy/
  sleep 1
end


foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/fileListEGamma2 | grep sel | grep HZZ `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithZeeGammaStudy_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithZeeGammaStudy_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithZeeGammaStudyPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_SingleEle_EleHZZICHEP2012WPWithZeeGammaStudy/
  sleep 1
end
