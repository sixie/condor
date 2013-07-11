#!/bin/tcsh
#===================================================================================================
# Submit a set of jobs to run over a given dataset, splitting the jobs according to the filesets.
#
# Version 1.0                                                                      November 14, 2008
#===================================================================================================


#############
#
# CV CF Toys
#
#############

##interactive example
set seed=1
/afs/cern.ch/work/s/sixie/public/condor/bin/runCombineFitToys.csh CVCFModel_CV1p0_CF1p0_HighResChannels /afs/cern.ch/work/s/sixie/public/releases/HiggsCombination/CMSSW_5_2_0/src/HiggsProperties/Model_CVCF/workspaces/CVCFWorkspace_highres.root 125 CV=1.0,CF=1.0 cross "--minimizerAlgoForMinos=SeqMinimizer --minimizerToleranceForMinos 0.01" $seed /afs/cern.ch/work/s/sixie/public/combination/Model_CVCF/CV1p0_CF1p0/


# CV=1.0 , CF=1.0
foreach seed(`seq 1 1000`)
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/HiggsProperties/CVCFModelToys_CV1p0CF1p0_HighResChannels_${seed}.out -J HiggsProperties_CV1p0CF1p0_HighResChannels_${seed} /afs/cern.ch/work/s/sixie/public/condor/bin/runCombineFitToys.csh CVCFModel_CV1p0_CF1p0_HighResChannels /afs/cern.ch/work/s/sixie/public/releases/HiggsCombination/CMSSW_5_2_0/src/HiggsProperties/Model_CVCF/workspaces/CVCFWorkspace_highres.root 125 CV=1.0,CF=1.0 "CV=-5.0,5.0:CF=-5.0,10.0" cross "--robustFit=1 --X-rtd FITTER_DYN_STEP" $seed /afs/cern.ch/work/s/sixie/public/combination/Model_CVCF/CV1p0_CF1p0_RobustFit_CVRange-5To5_CFRange-5To10/
end



# CV=1.0 , CF=2.0
foreach seed(`seq 1 1000`)
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/HiggsProperties/CVCFModelToys_CV1p0CF2p0_HighResChannels_${seed}.out -J HiggsProperties_CV1p0CF2p0_HighResChannels_${seed} /afs/cern.ch/work/s/sixie/public/condor/bin/runCombineFitToys.csh CVCFModel_CV1p0_CF2p0_HighResChannels /afs/cern.ch/work/s/sixie/public/releases/HiggsCombination/CMSSW_5_2_0/src/HiggsProperties/Model_CVCF/workspaces/CVCFWorkspace_highres.root 125 CV=1.0,CF=2.0 "CV=-5.0,5.0:CF=-5.0,10.0" cross "--robustFit=1 --X-rtd FITTER_DYN_STEP" $seed /afs/cern.ch/work/s/sixie/public/combination/Model_CVCF/CV1p0_CF2p0_RobustFit_CVRange-5To5_CFRange-5To10/
end



# CV=0.5 , CF=1.0
foreach seed(`seq 1 1000`)
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/HiggsProperties/CVCFModelToys_CV0p5CF1p0_HighResChannels_${seed}.out -J HiggsProperties_CV0p5CF1p0_HighResChannels_${seed} /afs/cern.ch/work/s/sixie/public/condor/bin/runCombineFitToys.csh CVCFModel_CV0p5_CF1p0_HighResChannels /afs/cern.ch/work/s/sixie/public/releases/HiggsCombination/CMSSW_5_2_0/src/HiggsProperties/Model_CVCF/workspaces/CVCFWorkspace_highres.root 125 CV=0.5,CF=1.0 "CV=-5.0,5.0:CF=-5.0,10.0" cross "--robustFit=1 --X-rtd FITTER_DYN_STEP" $seed /afs/cern.ch/work/s/sixie/public/combination/Model_CVCF/CV0p5_CF1p0_RobustFit_CVRange-5To5_CFRange-5To10/
end


# CV=0.5 , CF=2.0
foreach seed(`seq 1 1000`)
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/HiggsProperties/CVCFModelToys_CV0p5CF2p0_HighResChannels_${seed}.out -J HiggsProperties_CV0p5CF2p0_HighResChannels_${seed} /afs/cern.ch/work/s/sixie/public/condor/bin/runCombineFitToys.csh CVCFModel_CV0p5_CF2p0_HighResChannels /afs/cern.ch/work/s/sixie/public/releases/HiggsCombination/CMSSW_5_2_0/src/HiggsProperties/Model_CVCF/workspaces/CVCFWorkspace_highres.root 125 CV=0.5,CF=2.0 "CV=-5.0,5.0:CF=-5.0,10.0" cross "--robustFit=1 --X-rtd FITTER_DYN_STEP" $seed /afs/cern.ch/work/s/sixie/public/combination/Model_CVCF/CV0p5_CF2p0_RobustFit_CVRange-5To5_CFRange-5To10/
end


