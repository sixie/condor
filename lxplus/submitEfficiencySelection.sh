#!/bin/tcsh
#===================================================================================================
# Submit a set of jobs to run over a given dataset, splitting the jobs according to the filesets.
#
# Version 1.0                                                                      November 14, 2008
#===================================================================================================


#############
#
#HWW  MVA V3
#
#############

/afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/ selectEleHWWIDIsoMVAV3WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/AllNtuple_HZZ4lNtuple_s12-zllm50-2-v9_noskim_0000.root\",\"/afs/cern.ch/work/s/sixie/public/HWW/Efficiency/Electrons/Summer12_EleHWWIDIsoMVAV3WP/probes.AllNtuple_HZZ4lNtuple_s12-zllm50-2-v9_noskim_0000.root\",1,-1,2\)

#############
#MC
#############

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHWWIDIsoMVAV3WP_${file}.out -J Efficiency_selectEleHWWIDIsoMVAV3WP_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/ selectEleHWWIDIsoMVAV3WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"/afs/cern.ch/work/s/sixie/public/HWW/Efficiency/Electrons/Summer12_EleHWWIDIsoMVAV3WP/probes.${file}\",1,-1,2\)
end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHWWIDIsoMVAV3WP_${file}.out -J Efficiency_selectEleHWWIDIsoMVAV3WP_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/ selectEleHWWIDIsoMVAV3WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"/afs/cern.ch/work/s/sixie/public/HWW/Efficiency/Electrons/Data2012_EleHWWIDIsoMVAV3WP/probes.${file}\",0,0,2\)
end






#############
#
#HWW  MVA V4
#
#############
/afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/ selectEleHWWIDIsoMVAV4WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/AllNtuple_HZZ4lNtuple_s12-zllm50-2-v9_noskim_0000.root\",\"/afs/cern.ch/work/s/sixie/public/HWW/Efficiency/Electrons/Summer12_EleHWWIDIsoMVAV4WP/probes.AllNtuple_HZZ4lNtuple_s12-zllm50-2-v9_noskim_0000.root\",1,-1,2\)


#############
#MC
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)

  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHWWIDIsoMVAV4WP_${file}.out -J Efficiency_selectEleHWWIDIsoMVAV4WP_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/ selectEleHWWIDIsoMVAV4WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HWW/Efficiency/Electrons/Summer12_EleHWWIDIsoMVAV4WP/
  sleep 1

end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHWWIDIsoMVAV4WP_${file}.out -J Efficiency_selectEleHWWIDIsoMVAV4WP_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/ selectEleHWWIDIsoMVAV4WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,0,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HWW/Efficiency/Electrons/Data2012_EleHWWIDIsoMVAV4WP/
  sleep 1
end



#############
#
#HWW  MVA V5
#
#############
/afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/ selectEleHWWIDIsoMVAV5WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/AllNtuple_HZZ4lNtuple_s12-zllm50-2-v9_noskim_0000.root\",\"/afs/cern.ch/work/s/sixie/public/HWW/Efficiency/Electrons/Summer12_EleHWWIDIsoMVAV5WP/probes.AllNtuple_HZZ4lNtuple_s12-zllm50-2-v9_noskim_0000.root\",1,-1,2\)


#############
#MC
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)

  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHWWIDIsoMVAV5WP_${file}.out -J Efficiency_selectEleHWWIDIsoMVAV5WP_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/ selectEleHWWIDIsoMVAV5WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HWW/Efficiency/Electrons/Summer12_EleHWWIDIsoMVAV5WP/
  sleep 1
end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHWWIDIsoMVAV5WP_${file}.out -J Efficiency_selectEleHWWIDIsoMVAV5WP_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/ selectEleHWWIDIsoMVAV5WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,0,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HWW/Efficiency/Electrons/Data2012_EleHWWIDIsoMVAV5WP/
end






#############
#
#HWW ICHEP2012 WP
#
#############
/afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/ selectEleHWWICHEP2012WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/AllNtuple_HZZ4lNtuple_s12-zllm50-2-v9_noskim_0000.root\",\"/afs/cern.ch/work/s/sixie/public/HWW/Efficiency/Electrons/Summer12_EleHWWICHEP2012WP/probes.AllNtuple_HZZ4lNtuple_s12-zllm50-2-v9_noskim_0000.root\",1,-1,2\)


#############
#MC
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)

  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHWWICHEP2012WP_${file}.out -J Efficiency_selectEleHWWICHEP2012WP_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/ selectEleHWWICHEP2012WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"/afs/cern.ch/work/s/sixie/public/HWW/Efficiency/Electrons/Summer12_EleHWWICHEP2012WP/probes.${file}\",1,-1,2\)

end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHWWICHEP2012WP_${file}.out -J Efficiency_selectEleHWWICHEP2012WP_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HWW/Efficiency/ selectEleHWWICHEP2012WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"/afs/cern.ch/work/s/sixie/public/HWW/Efficiency/Electrons/Data2012_EleHWWICHEP2012WP/probes.${file}\",0,0,2\)
end







#############
#
# HZZ ICHEP2012
#
#############

/afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/AllNtuple_HZZ4lNtuple_s12-zllm50-2-v9_noskim_0000.root\",\"/afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012/probes.AllNtuple_HZZ4lNtuple_s12-zllm50-2-v9_noskim_0000.root\",1,-1,2\)

#############
#MC
#############

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012_${file}.out -J Efficiency_selectEleHZZICHEP2012_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"/afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012/probes.${file}\",1,-1,2\)
end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012_${file}.out -J Efficiency_selectEleHZZICHEP2012_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"/afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012/probes.${file}\",0,0,2\)
end



#############
#
# HZZ ICHEP2012 ID Given Iso
#
#############

/afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IDGivenIsoPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/AllNtuple_HZZ4lNtuple_s12-zllm50-2-v9_noskim_0000.root\",\"/afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012/probes.AllNtuple_HZZ4lNtuple_s12-zllm50-2-v9_noskim_0000.root\",1,-1,2\)

#############
#MC
#############

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IDGivenIso_${file}.out -J Efficiency_selectEleHZZICHEP2012IDGivenIso_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IDGivenIsoPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IDGivenIso/
end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IDGivenIso_${file}.out -J Efficiency_selectEleHZZICHEP2012IDGivenIso_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IDGivenIsoPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,0,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IDGivenIso/
end


#############
#
# HZZ ICHEP2012 Iso Given ID
#
#############

/afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IsoGivenIDPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/AllNtuple_HZZ4lNtuple_s12-zllm50-2-v9_noskim_0000.root\",\"/afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012/probes.AllNtuple_HZZ4lNtuple_s12-zllm50-2-v9_noskim_0000.root\",1,-1,2\)

#############
#MC
#############

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IsoGivenID_${file}.out -J Efficiency_selectEleHZZICHEP2012IsoGivenID_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IsoGivenIDPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012IsoGivenID/
end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012IsoGivenID_${file}.out -J Efficiency_selectEleHZZICHEP2012IsoGivenID_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012IsoGivenIDPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",0,0,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012IsoGivenID/
end


#############
#
# HZZ ICHEP2012 WP with Tight Tag Cuts & MET Cut
#
#############

#############
#MC
#############

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithTightTag_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithTightTag_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithTightTagPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012WPWithTightTag/
  sleep 1
end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithTightTag_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithTightTag_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithTightTagPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_egamma/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"/afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Data2012_EleHZZICHEP2012WPWithTightTag/probes.${file}\",0,0,2\) 
  sleep 1
end







#############
#
# HZZ ICHEP2012 Z->4l Electron Tag and Probe
#
#############

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/fileListB2 | grep HZZ | grep powheg | grep 4e `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012_Zto4l_${file}.out -J Efficiency_selectEleHZZICHEP2012_Zto4l_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WP_Zto4lPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"/afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012WP_Zto4l/probes.${file}\",1,1,2\)
end


foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/fileListB2 | grep HZZ | grep powheg | grep 2e2m `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012_Zto4l_${file}.out -J Efficiency_selectEleHZZICHEP2012_Zto4l_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WP_Zto4lPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"/afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012WP_Zto4l/probes.${file}\",1,3,2\)
end


foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/fileListStoreUser2 | grep HZZ | grep zll`)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012_Zto4l_${file}.out -J Efficiency_selectEleHZZICHEP2012_Zto4l_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WP_Zto4lPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"/afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012WP_Zto4l/probes.${file}\",0,0,2\)
end



#############
#
# HZZ ICHEP2012 WP with Z->ee+gamma
#
#############




#############
#MC
#############

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithZeeGamma_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithZeeGamma_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-1,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012WPWithZeeGamma/
  sleep 1
end

foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/s12-zee.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_higgs\/cmshzz4l\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
  echo $file
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/Efficiency/selectEleHZZICHEP2012WPWithZeeGammaBkg_${file}.out -J Efficiency_selectEleHZZICHEP2012WPWithZeeGammaBkg_${file} /afs/cern.ch/work/s/sixie/public/condor/bin/runRootJob.csh /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/ selectEleHZZICHEP2012WPWithZeeGammaPerFile.C +\(\"root://eoscms//eos/cms/store/group/phys_higgs/cmshzz4l/sixie/hist/AllNtuple/cern/filefi/028/${file}\",\"probes.${file}\",1,-2,2\) probes.${file} /afs/cern.ch/work/s/sixie/public/HZZ4l/Efficiency/Electrons/Summer12_EleHZZICHEP2012WPWithZeeGammaBkg/
  sleep 1
end


#############
#Data
#############
foreach file(`cat /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/HZZ4l/Efficiency/data_el.2012.EOS.conf | grep AllNtuple | awk '{print $1}' | sed 's/root:\/\/eoscms\/\/eos\/cms\/store\/group\/phys_egamma\/sixie\/hist\/AllNtuple\/cern\/filefi\/028\///' `)
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
