########################################################################################################
#MC Zee Analysis & ntuple maker
########################################################################################################

# Fake Data
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011/fakedata/ewk/ data noskim ZeeAnalysis /home/sixie/hist -1 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ksung/catalog/mit filler/011/ ewk-v1 noskim ZeeAnalysis /home/sixie/hist -1 



#7TeV signal samples
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-zee-7-mc3 noskim ZeeAnalysis /home/sixie/hist 7 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-zeem20-7-mc3 noskim ZeeAnalysis /home/sixie/hist 7 


#7TeV background samples
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-ztt-7-mc3 noskim ZeeAnalysis /home/sixie/hist 8 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-we-7-mc3 noskim ZeeAnalysis /home/sixie/hist 1 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-wt-7-mc3 noskim ZeeAnalysis /home/sixie/hist 2 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 s09-ttbar-7-mc3 noskim ZeeAnalysis /home/sixie/hist 4 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 s09-wg-7-mc3 noskim ZeeAnalysis /home/sixie/hist 26 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-ww-7-mc3 noskim ZeeAnalysis /home/sixie/hist 24 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-wz-7-mc3 noskim ZeeAnalysis /home/sixie/hist 20 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-zz-7-mc3 noskim ZeeAnalysis /home/sixie/hist 22 


./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem20_30-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 11 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem30_80-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 12
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem80_170-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 13 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc20_30-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 14 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc30_80-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 15 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc80_170-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 16 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj15-7-mc3 noskim ZeeAnalysis /home/sixie/hist 50 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj30-7-mc3 noskim ZeeAnalysis /home/sixie/hist 51 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj80-7-mc3 noskim ZeeAnalysis /home/sixie/hist 52 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj170-7-mc3 noskim ZeeAnalysis /home/sixie/hist 53 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj300-7-mc3 noskim ZeeAnalysis /home/sixie/hist 54

#7TeV Fake rate method
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011/fakedata ewk-v2 noskim ZeeAnalysis /home/sixie/hist 21001 

./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-we-7-mc3 noskim ZeeAnalysis /home/sixie/hist 21001 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-wt-7-mc3 noskim ZeeAnalysis /home/sixie/hist 21002 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem20_30-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 21011 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem30_80-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 21012
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem80_170-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 21013 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc20_30-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 21014 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc30_80-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 21015 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc80_170-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 21016 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj15-7-mc3 noskim ZeeAnalysis /home/sixie/hist 21050 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj30-7-mc3 noskim ZeeAnalysis /home/sixie/hist 21051 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj80-7-mc3 noskim ZeeAnalysis /home/sixie/hist 21052 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj170-7-mc3 noskim ZeeAnalysis /home/sixie/hist 21053 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj300-7-mc3 noskim ZeeAnalysis /home/sixie/hist 21054

#7TeV Fake rate method with CustomTight cuts
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-we-7-mc3 noskim ZeeAnalysis /home/sixie/hist 31001 d
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-wt-7-mc3 noskim ZeeAnalysis /home/sixie/hist 31002 d
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem20_30-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 31011 d
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem30_80-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 31012 d
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem80_170-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 31013 d
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc20_30-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 31014 d
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc30_80-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 31015 d
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc80_170-7-hww-sde10eid noskim ZeeAnalysis /home/sixie/hist 31016 d
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj15-7-mc3 noskim ZeeAnalysis /home/sixie/hist 31050 d
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj30-7-mc3 noskim ZeeAnalysis /home/sixie/hist 31051 d
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj80-7-mc3 noskim ZeeAnalysis /home/sixie/hist 31052 d
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj170-7-mc3 noskim ZeeAnalysis /home/sixie/hist 31053 d
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-pj300-7-mc3 noskim ZeeAnalysis /home/sixie/hist 31054 d
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-qcd15-7-mc3 noskim ZeeAnalysis /home/sixie/hist 31060 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-qcd30-7-mc3 noskim ZeeAnalysis /home/sixie/hist 31061 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-qcd80-7-mc3 noskim ZeeAnalysis /home/sixie/hist 31062 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-qcd170-7-mc3 noskim ZeeAnalysis /home/sixie/hist 31063 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-qcd300-7-mc3 noskim ZeeAnalysis /home/sixie/hist 31064


#Oct Ex Skims
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 oct09-qcdem20_30-7-hww-sde10eid noskim HwwNtuple /home/sixie/ntuples 11
#./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 oct09-qcdem30_80-7-hww-sde10eid noskim HwwNtuple /home/sixie/ntuples 12
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 oct09-qcdem80_170-7-hww-sde10eid noskim HwwNtuple /home/sixie/ntuples 13
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 oct09-qcdbc20_30-7-hww-sde10eid noskim HwwNtuple /home/sixie/ntuples 14
#./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 oct09-qcdbc80_170-7-hww-sde10eid noskim HwwNtuple /home/sixie/ntuples 16


#WJetsBkg Fake Rate Method Analysis
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeWJetsBkgAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-we-7-mc3 noskim ZeeWJetsBkgAnalysis /home/sixie/hist 1 



########################################################################################################
########################################################################################################


########################################################################################################
########################################################################################################

########################################################################################################
#Tag And Probe Efficiency 
########################################################################################################


#Fake data

./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/mitprod/catalog/cern filler/011/fakedata/ ewk-v2 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist -1 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/ksung/catalog/mit filler/011/ ewk-v1 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist -1 




#7TeV samples

./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/mitprod/catalog/cern filler/011 s09-zee-7-mc3 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 7 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/mitprod/catalog/cern filler/011 s09-ztt-7-mc3 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 8 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/mitprod/catalog/cern filler/011 s09-we-7-mc3 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 1 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/mitprod/catalog/cern filler/011 s09-wt-7-mc3 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 2 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/ceballos/catalog/cern filler/011 s09-ttbar-7-mc3 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 4 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/ceballos/catalog/cern filler/011 s09-wg-7-mc3 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 26 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/ceballos/catalog/cern filler/011 s09-ww-7-mc3 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 24 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/ceballos/catalog/cern filler/011 s09-wz-7-mc3 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 20 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/ceballos/catalog/cern filler/011 s09-zz-7-mc3 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 22 


./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem20_30-7-hww-sde10eid noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 11 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem30_80-7-hww-sde10eid noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 12
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem80_170-7-hww-sde10eid noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 13 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc20_30-7-hww-sde10eid noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 14 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc30_80-7-hww-sde10eid noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 15 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc80_170-7-hww-sde10eid noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 16 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/mitprod/catalog/cern filler/011 s09-pj15-7-mc3 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 50 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/mitprod/catalog/cern filler/011 s09-pj30-7-mc3 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 51 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/mitprod/catalog/cern filler/011 s09-pj80-7-mc3 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 52 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/mitprod/catalog/cern filler/011 s09-pj170-7-mc3 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 53 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runTagAndProbeElectronEfficiencyMod.C+ /home/mitprod/catalog/cern filler/011 s09-pj300-7-mc3 noskim TagAndProbeElectronEfficiencyMod /home/sixie/hist 54


########################################################################################################
########################################################################################################

########################################################################################################
########################################################################################################


########################################################################################################
#Acceptance Studies
########################################################################################################
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAcceptanceMod.C+ /home/mitprod/catalog/cern filler/011 s09-zee-mc3 noskim ZeeAcceptanceMod /home/sixie/hist 7 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAcceptanceMod.C+ /home/mitprod/catalog/cern filler/011 s09-zee-7-mc3 noskim ZeeAcceptanceMod /home/sixie/hist 7 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAcceptanceMod.C+ /home/ceballos/catalog/cern filler/011 s09-zee-powheg-mc3 noskim ZeeAcceptanceMod /home/sixie/hist 7 

########################################################################################################
#Trigger EfficiencyAcceptance Studies
########################################################################################################
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronTriggerEfficiencyMod.C+ /home/mitprod/catalog/cern filler/011/fakedata/ewk/ data noskim ElectronTriggerEfficiencyMod /home/sixie/hist 7 



./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronTriggerEfficiencyMod.C+ /home/mitprod/catalog/cern filler/011 s09-zee-7-mc3 noskim ElectronTriggerEfficiencyMod /home/sixie/hist 7 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronTriggerEfficiencyMod.C+ /home/mitprod/catalog/cern filler/011 s09-we-7-mc3 noskim ElectronTriggerEfficiencyMod /home/sixie/hist 1 


########################################################################################################
#Zee Analysis Debug
########################################################################################################
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runZeeAnalysisDebug.C+ /home/mitprod/catalog/cern filler/011 s09-zee-7-mc3 noskim ZeeAnalysisDebug /home/sixie/hist 7 


########################################################################################################
# Electron Selection Optimization Ntuple
########################################################################################################
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/mitprod/catalog/cern filler/011 s09-zee-7-mc3 noskim ElectronSelectionOptimization /home/sixie/hist 7 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/mitprod/catalog/cern filler/011 s09-ztt-7-mc3 noskim ElectronSelectionOptimization /home/sixie/hist 8 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/mitprod/catalog/cern filler/011 s09-we-7-mc3 noskim ElectronSelectionOptimization /home/sixie/hist 1 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/mitprod/catalog/cern filler/011 s09-wt-7-mc3 noskim ElectronSelectionOptimization /home/sixie/hist 2 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/ceballos/catalog/cern filler/011 s09-ttbar-7-mc3 noskim ElectronSelectionOptimization /home/sixie/hist 4 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/ceballos/catalog/cern filler/011 s09-wg-7-mc3 noskim ElectronSelectionOptimization /home/sixie/hist 26 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/ceballos/catalog/cern filler/011 s09-ww-7-mc3 noskim ElectronSelectionOptimization /home/sixie/hist 24 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/ceballos/catalog/cern filler/011 s09-wz-7-mc3 noskim ElectronSelectionOptimization /home/sixie/hist 20 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/ceballos/catalog/cern filler/011 s09-zz-7-mc3 noskim ElectronSelectionOptimization /home/sixie/hist 22 


./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem20_30-7-hww-sde10eid noskim ElectronSelectionOptimization /home/sixie/hist 11 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem30_80-7-hww-sde10eid noskim ElectronSelectionOptimization /home/sixie/hist 12
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdem80_170-7-hww-sde10eid noskim ElectronSelectionOptimization /home/sixie/hist 13 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc20_30-7-hww-sde10eid noskim ElectronSelectionOptimization /home/sixie/hist 14 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc30_80-7-hww-sde10eid noskim ElectronSelectionOptimization /home/sixie/hist 15 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/ceballos/catalog/cern filler/011 oct09-qcdbc80_170-7-hww-sde10eid noskim ElectronSelectionOptimization /home/sixie/hist 16 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/mitprod/catalog/cern filler/011 s09-pj15-7-mc3 noskim ElectronSelectionOptimization /home/sixie/hist 50 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/mitprod/catalog/cern filler/011 s09-pj30-7-mc3 noskim ElectronSelectionOptimization /home/sixie/hist 51 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/mitprod/catalog/cern filler/011 s09-pj80-7-mc3 noskim ElectronSelectionOptimization /home/sixie/hist 52 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/mitprod/catalog/cern filler/011 s09-pj170-7-mc3 noskim ElectronSelectionOptimization /home/sixie/hist 53 
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runElectronSelectionOptimization.C+ /home/mitprod/catalog/cern filler/011 s09-pj300-7-mc3 noskim ElectronSelectionOptimization /home/sixie/hist 54
