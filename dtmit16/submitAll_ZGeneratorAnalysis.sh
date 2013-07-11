########################################################################################################
#MC Zee Analysis & ntuple maker
########################################################################################################

./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/mitprod/catalog/mit filler/011 s09-zee-mc3 noskim ZGeneratorAnalysis /home/sixie/hist 7 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/mitprod/catalog/mit filler/011 s09-zee-7-mc3 noskim ZGeneratorAnalysis /home/sixie/hist 0 



########################################################################################################
#Powheg
########################################################################################################

./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 powheg-zee-14TeV-cteq66-PhilTune noskim ZGeneratorAnalysis /home/sixie/hist 0 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 powheg-zee-7TeV-cteq66-PhilTune noskim ZGeneratorAnalysis /home/sixie/hist 0 

#official Summer09 powheg sample CTEQ6M
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-zeem20-7-mc3 noskim ZGeneratorAnalysis /home/sixie/hist 0 

#our production
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-zeem20-7-c66-mc3 noskim ZGeneratorAnalysis /home/sixie/hist 0 


########################################################################################################
#Pythia
########################################################################################################
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-zee-7-mc3 noskim ZGeneratorAnalysis /home/sixie/hist 0 



./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 pythia-zee-14TeV-cteq66-PhilTune noskim ZGeneratorAnalysis /home/sixie/hist 0 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 pythia-zee-7TeV-cteq66-PhilTune noskim ZGeneratorAnalysis /home/sixie/hist 0 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 pythia-zee-14TeV-cteq6l-PhilTune noskim ZGeneratorAnalysis /home/sixie/hist 0 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 pythia-zee-7TeV-cteq6l-PhilTune noskim ZGeneratorAnalysis /home/sixie/hist 0 

./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 pythia-zee-14TeV-cteq66 noskim ZGeneratorAnalysis /home/sixie/hist 0 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 pythia-zee-7TeV-cteq66 noskim ZGeneratorAnalysis /home/sixie/hist 0 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 pythia-zee-14TeV-cteq6l noskim ZGeneratorAnalysis /home/sixie/hist 0 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 pythia-zee-7TeV-cteq6l noskim ZGeneratorAnalysis /home/sixie/hist 0 

########################################################################################################
#Herwig
########################################################################################################

./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 herwigPlusJimmy-zee-14TeV-cteq66 noskim ZGeneratorAnalysis /home/sixie/hist 2 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 herwigPlusJimmy-zee-7TeV-cteq66 noskim ZGeneratorAnalysis /home/sixie/hist 2 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 herwigPlusJimmy-zee-14TeV-cteq6l noskim ZGeneratorAnalysis /home/sixie/hist 2 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 herwigPlusJimmy-zee-7TeV-cteq6l noskim ZGeneratorAnalysis /home/sixie/hist 2 



./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 herwig-zee-14TeV-cteq66 noskim ZGeneratorAnalysis /home/sixie/hist 1 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 herwig-zee-7TeV-cteq66 noskim ZGeneratorAnalysis /home/sixie/hist 1 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 herwig-zee-14TeV-cteq6l noskim ZGeneratorAnalysis /home/sixie/hist 1 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 herwig-zee-7TeV-cteq6l noskim ZGeneratorAnalysis /home/sixie/hist 1 


########################################################################################################
#Sherpa
########################################################################################################

./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/ceballos/catalog/cern filler/011 s09-zjets-sherpa-7-mc3 noskim ZGeneratorAnalysis /home/sixie/hist 3 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/ceballos/catalog/cern filler/011 s09-zjets1050-sherpa-7-mc3 noskim ZGeneratorAnalysis /home/sixie/hist 3 

########################################################################################################
#Study Sherpa After FSR 
########################################################################################################
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/ceballos/catalog/cern filler/011 s09-zjets-sherpa-7-mc3 noskim ZGeneratorAnalysis_AfterFSR /home/sixie/hist 3 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/ceballos/catalog/cern filler/011 s09-zjets1050-sherpa-7-mc3 noskim ZGeneratorAnalysis_AfterFSR /home/sixie/hist 3 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-zee-7-mc3 noskim ZGeneratorAnalysis_AfterFSR /home/sixie/hist 10
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 pythia-zee-7TeV-cteq66 noskim ZGeneratorAnalysis_AfterFSR /home/sixie/hist 10 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZGeneratorAnalysis.C+ /home/sixie/catalog/mit filler/011 pythia-zee-7TeV-cteq6l noskim ZGeneratorAnalysis_AfterFSR /home/sixie/hist 10 


########################################################################################################     
#PDF Systematics
########################################################################################################          


./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZPDFSystematicsAnalysis.C+ /home/sixie/catalog/mit filler/011 pythia-zee-14TeV-cteq66 noskim ZPDFSystematics /home/sixie/hist 0
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZPDFSystematicsAnalysis.C+ /home/sixie/catalog/mit filler/011 pythia-zee-7TeV-cteq66 noskim ZPDFSystematics /home/sixie/hist 0

./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZPDFSystematicsAnalysis.C+ /home/sixie/catalog/mit filler/011 herwig-zee-14TeV-cteq66 noskim ZPDFSystematics /home/sixie/hist 1
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZPDFSystematicsAnalysis.C+ /home/sixie/catalog/mit filler/011 herwig-zee-7TeV-cteq66 noskim ZPDFSystematics /home/sixie/hist 1





./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZPDFSystematicsAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-zeem20-7-mc3 noskim ZPDFSystematics /home/sixie/hist 0
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZPDFSystematicsAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-zeem20-7-mc3 noskim ZPDFSystematics_MSTW2008 /home/sixie/hist 0

#our powheg samples
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runZPDFSystematicsAnalysis.C+ /home/sixie/catalog/mit filler/011 s09-zeem20-7-c66-mc3 noskim ZPDFSystematics /home/sixie/hist 0



#Full Event Selection Systematics
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-zeem20-7-mc3 noskim ZeeAnalysis /home/sixie/hist 7 
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-zeem20-7-mc3 noskim ZeeAnalysis_MSTW2008nlo68cl /home/sixie/hist 7 

#our powheg sample
./submit.csh /home/sixie/CMSSW_genStudy/src/MitHiggs/macros/runMacros/runZeeAnalysis.C+ /home/mitprod/catalog/cern filler/011 s09-zeem20-7-c66-mc3 noskim ZeeAnalysis /home/sixie/hist 7 
