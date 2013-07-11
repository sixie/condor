#For WJets

#Without conversion Filter
./submit.csh /home/sixie/CMSSW_2_2_7/src/MitPhysics/macros/runElectronValidation.C+ /home/mitprod/catalog/mit filler/008 s8-h160ww2l-id11 noskim ElectronValidation_Tight /server/02a/sixie/hist 1 
./submit.csh /home/sixie/CMSSW_2_2_7/src/MitPhysics/macros/runElectronValidation.C+ /home/mitprod/catalog/mit filler/008 s8-qcdem_20_30-id11 singlelepton ElectronValidation /server/02a/sixie/hist 1
./submit.csh /home/sixie/CMSSW_2_2_71/src/MitPhysics/macros/runElectronValidation.C+ /home/mitprod/catalog/mit filler/008 s8-qcdem_30_80-id11 noskim ElectronValidation /server/02a/sixie/hist 1 
./submit.csh /home/sixie/CMSSW_2_2_7/src/MitPhysics/macros/runElectronValidation.C+ /home/mitprod/catalog/mit filler/008 s8-qcdem_80_170-id11 noskim ElectronValidation /server/02a/sixie/hist 1 


#backgrounds
./submit.csh /home/sixie/CMSSW_2_2_7/src/MitPhysics/macros/runElectronValidation.C+ /home/mitprod/catalog/mit filler/006 s8-qcdem_20_30-id9 singlelepton ElectronValidation /server/02a/sixie/hist 1 nostage
./submit.csh /home/sixie/CMSSW_2_2_7/src/MitPhysics/macros/runElectronValidation.C+ /home/mitprod/catalog/mit filler/006 s8-qcdem_30_80-id9 singlelepton ElectronValidation /server/02a/sixie/hist 1 nostage
./submit.csh /home/sixie/CMSSW_2_2_7/src/MitPhysics/macros/runElectronValidation.C+ /home/mitprod/catalog/mit filler/006 s8-qcdem_80_170-id9 singlelepton ElectronValidation /server/02a/sixie/hist 1 nostage
./submit.csh /home/sixie/CMSSW_2_2_7/src/MitPhysics/macros/runElectronValidation.C+ /home/mitprod/catalog/mit filler/006 s8-qcdbc_20_30-id9 singlelepton ElectronValidation /server/02a/sixie/hist 1 nostage
./submit.csh /home/sixie/CMSSW_2_2_7/src/MitPhysics/macros/runElectronValidation.C+ /home/mitprod/catalog/mit filler/006 s8-qcdbc_30_80-id9 singlelepton ElectronValidation /server/02a/sixie/hist 1 nostage
./submit.csh /home/sixie/CMSSW_2_2_7/src/MitPhysics/macros/runElectronValidation.C+ /home/mitprod/catalog/mit filler/006 s8-qcdbc_80_170-id9 singlelepton ElectronValidation /server/02a/sixie/hist 1 nostage

#For EGamma Tight definition
./submit.csh /home/sixie/CMSSW_2_2_7/src/MitPhysics/macros/runElectronValidation.C+ /home/mitprod/catalog/mit filler/008 s8-h160ww2l-id11 noskim ElectronValidation_EGammaTight /server/02a/sixie/hist 2 

#For Loose definition
./submit.csh /home/sixie/CMSSW_2_2_7/src/MitPhysics/macros/runElectronValidation.C+ /home/mitprod/catalog/mit filler/008 s8-h160ww2l-id11 noskim ElectronValidation_Loose /server/02a/sixie/hist 3 

#For EGamma Loose definition
./submit.csh /home/sixie/CMSSW_2_2_7/src/MitPhysics/macros/runElectronValidation.C+ /home/mitprod/catalog/mit filler/008 s8-h160ww2l-id11 noskim ElectronValidation_EGammaLoose /server/02a/sixie/hist 4 
