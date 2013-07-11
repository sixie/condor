#!/bin/tcsh

#006 datasets.
./submit.csh /server/02a/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWSelection.C /home/mitprod/catalog/mit filler/006 s8-ttbar-mg-id9 WWAnalysis /server/02a/sixie/hist -1

./submit.csh /server/02a/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWSelection.C /home/mitprod/catalog/mit filler/006 s8-zjets-mg-id9 WWAnalysis /server/02a/sixie/hist -1

./submit.csh /server/02a/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWSelection.C /home/mitprod/catalog/mit filler/006 s8-wjets-mg-id9 WWAnalysis /server/02a/sixie/hist -1

./submit.csh /server/02a/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWSelection.C /home/mitprod/catalog/mit filler/006 s8-qcd_250_500-mg-id9 WWAnalysis /server/02a/sixie/hist -1




./submit.csh /server/02a/sixie/CMSSW_2_1_10/src/MitPhysics/macros/Validation/runElectronIsolationStudy.C /home/mitprod/catalog/mit filler/004 mitPrivateH165WW_2l-id9 ElectronIsolationStudy /server/02a/sixie/hist -1

root -l MitPhysics/macros/Validation/runElectronIsolationStudy.C\(\"\",\"mitPrivateH165WW_2l-id9\",\"filler/004\",\"/home/mitprod/catalog/mit\",\"ElectronIsolationStudy\",-1,-1\)




root -l ./rootlogon.C MitHiggs/macros/runMacros/runWWSelection.C\(\"0000\",\"s8-ww2l-id9\",\"filler/006\",\"/home/mitprod/catalog/mit\",\"WWSelection\",-1,-1\)


#For creating the cut optimization ntuple
root -l ./rootlogon.C MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+\(\"0000\",\"s8-ww2l-id9\",\"filler/006\",\"/home/mitprod/catalog/mit\",\"WWEventSelectionOptimization\",-1,-1\)
root -l ./rootlogon.C MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+\(\"0001\",\"s8-ttbar-mg-id9\",\"filler/006\",\"/home/mitprod/catalog/mit\",\"WWEventSelectionOptimization\",1000,-1\)

./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-ww2l-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1
./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-ttbar-mg-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1
./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-wjets-mg-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1
./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-wz3l-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1
./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-zz4l-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1
./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-zz2l2n-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1
./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-vqq-mg-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1
./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-zjets-mg-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1
./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-we-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1
./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-wtau-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1
./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-wm-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1
./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-zee-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1
./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-ztautau-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1
./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-zmm-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1
./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runWWEventSelectionOptimizationTreeCreatorMod.C+ /home/mitprod/catalog/mit filler/006 s8-incmu_15-id9 WWEventSelectionOptimizationTree /server/02a/sixie/ntuples -1

