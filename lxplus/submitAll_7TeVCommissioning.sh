################################
#Fake Data
###############################

#For the 1pb^-1 fake data
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog/cern filler/011/fakedata ewk-v2 noskim Commissioning_HFCoincidence /home/sixie/hist 5000

//from local cluster
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/sixie/catalog/cern filler/011 ewk-v2 noskim ComputeElectronFakeRate_JetTriggerSample /home/sixie/hist 5000


################################
# Data
###############################
#09 Data
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/sixie/catalog/cern filler/013/ bc09-minb-rrm03 noskim Commissioning_HFCoincidence /home/sixie/hist -1

#10 Data
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/sixie/catalog/cern filler/013/ c10-minb-pr-Frank noskim Commissioning_HFCoincidence /home/sixie/hist -1
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/sixie/catalog/local filler/013/ c10-minb-pr-Frank noskim Commissioning_HFCoincidence /home/sixie/hist -1

./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/sixie/catalog/cern filler/013/ c10-minb-pr-WithOffLinePV noskim Commissioning_HFCoincidence /home/sixie/hist -1
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/sixie/catalog/local filler/013/ c10-minb-pr-WithOffLinePV noskim Commissioning_HFCoincidence /home/sixie/hist -1

./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/sixie/catalog cern/filler/013/ c10-minb-goodcollSkim noskim Commissioning_HFCoincidence /home/sixie/hist -1
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/sixie/catalog local/filler/013/ c10-minb-goodcollSkim noskim Commissioning_HFCoincidence /home/sixie/hist -1
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/013/ c10-minb-goodcoll-v7 noskim Commissioning_HFCoincidence /home/sixie/hist -1


################################
# Early MC
###############################
#7TeV MinBias MC
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/sixie/catalog cern/filler/013/ p10-minb7000-v26a-rr357-st3 noskim Commissioning_HFCoincidence /home/sixie/hist 1

./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/013/ p10pp-qcd30-v26 noskim Commissioning_HFCoincidence /home/sixie/hist 101
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/013/ p10pp-pjet15-v26 noskim Commissioning_HFCoincidence /home/sixie/hist 200
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/013/ p10-qcd15-v26 noskim Commissioning_HFCoincidence /home/sixie/hist 101



################################
# W,Z
###############################
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/011/ s09-zee-7-mc3 noskim Commissioning_HFCoincidence /home/sixie/hist 1006
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/011/ s09-zmm-7-mc3 noskim Commissioning_HFCoincidence /home/sixie/hist 1007
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/011/ s09-zmm-7-mc3 noskim Commissioning_HFCoincidence /home/sixie/hist 1008

./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/013/ p10pp-we-v26 noskim Commissioning_HFCoincidence /home/sixie/hist 1000
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/013/ p10pp-wm-v26 noskim Commissioning_HFCoincidence /home/sixie/hist 1001
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/013/ p10-we-v26 noskim Commissioning_HFCoincidence /home/sixie/hist 1000
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/011/ s09-wt-7-mc3 noskim Commissioning_HFCoincidence /home/sixie/hist 1002



