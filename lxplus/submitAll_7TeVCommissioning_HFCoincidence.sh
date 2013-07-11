################################
#Fake Data
###############################



################################
# Data
###############################
#09 Data
./submit.csh /home/sixie/CMSSW_current/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/sixie/catalog/cern filler/013/ bc09-minb-rrm03 noskim Commissioning_HFCoincidence /home/sixie/hist -1

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
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/sixie/catalog cern/filler/013/ s09-minb7000-ATLASTune-su3 noskim Commissioning_HFCoincidence /home/sixie/hist 1

./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/013/ p10pp-qcd30-v26 noskim Commissioning_HFCoincidence /home/sixie/hist 101
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/013/ p10pp-pjet15-v26 noskim Commissioning_HFCoincidence /home/sixie/hist 200




################################
# W,Z
###############################

./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/013/ p10pp-we-v26 noskim Commissioning_HFCoincidence /home/sixie/hist 1000
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runCommissioning/runCommissioning_HFCoincidence.C+ /home/mitprod/catalog cern/filler/013/ p10pp-wm-v26 noskim Commissioning_HFCoincidence /home/sixie/hist 1001



