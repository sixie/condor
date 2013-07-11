########################################################################################################
#MC Zee Analysis & ntuple maker
########################################################################################################

./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runDataZAnalysis.C+ /home/ceballos/catalog/mit filler/012 s09-minb900-startupv8i noskim FirstDataAnalysis /home/sixie/hist 1000
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runDataZAnalysis.C+ /home/ceballos/catalog/mit filler/012 beam09-minbias-preco-afterdec09 noskim FirstDataAnalysis /home/sixie/hist -1
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runMacros/runDataZAnalysis.C+ /home/ceballos/catalog/mit filler/012 beam09-minbias-skims noskim FirstDataAnalysis /home/sixie/hist -1
