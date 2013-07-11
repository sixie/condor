################################
# Data
###############################

#10 Data
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filefi/015/ r10a-jmt-s17 noskim ComputeFakeRates /home/sixie/hist -1 2
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filefi/015/ r10a-jm-s17 noskim ComputeFakeRates /home/sixie/hist -1 2
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filefi/015/ r10b-jmt-pr-v2 noskim ComputeFakeRates /home/sixie/hist -1 2
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filefi/015/ r10b-jet-pr-v2 noskim ComputeFakeRates /home/sixie/hist -1 2

./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filefi/015/ r10a-eg-s17 noskim ComputeFakeRates /home/sixie/hist -1 2
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filefi/015/ r10b-pho-pr-v2 noskim ComputeFakeRates /home/sixie/hist -1 2
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filefi/015/ r10b-egmo-pr-v2 noskim ComputeFakeRates /home/sixie/hist -1 2

################################
# Early MC
###############################
#7TeV MinBias MC
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filler/013/ p10-minb-rr357 noskim ComputeFakeRates /home/sixie/hist 1

./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filler/013/ p10-qcd15-v26 noskim ComputeFakeRates /home/sixie/hist 100
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog local/filler/013/ p10-qcd30-v26 noskim ComputeFakeRates /home/sixie/hist 101
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filler/013/ p10-qcd80-v26 noskim ComputeFakeRates /home/sixie/hist 102
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog local/filler/013/ p10-pj15-v26 noskim ComputeFakeRates /home/sixie/hist 200
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog local/filler/013/ p10-pj30-v26 noskim ComputeFakeRates /home/sixie/hist 201
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filler/013/ p10-pj80-v26 noskim ComputeFakeRates /home/sixie/hist 202

./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/ceballos/catalog cern/filler/014a/ p10-qcd15-v26 noskim ComputeFakeRates /home/sixie/hist 100
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/ceballos/catalog cern/filler/014a/ p10-qcd30-v26 noskim ComputeFakeRates /home/sixie/hist 101
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/ceballos/catalog cern/filler/014a/ p10-qcd80-v26 noskim ComputeFakeRates /home/sixie/hist 102
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/ceballos/catalog cern/filler/014a/ p10-pjet15-v26 noskim ComputeFakeRates /home/sixie/hist 200
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/ceballos/catalog cern/filler/014a/ p10-pjet30-v26 noskim ComputeFakeRates /home/sixie/hist 201
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/ceballos/catalog cern/filler/014a/ p10-pjet80-v26 noskim ComputeFakeRates /home/sixie/hist 202

./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/sixie/catalog cern/filler/014/ p10-qcd20-dt6-v26 noskim ComputeFakeRates /home/sixie/hist 100
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/ceballos/catalog cern/filler/014a/ p10-qcd20-dt6-v26 noskim ComputeFakeRates /home/sixie/hist 100


################################
# W,Z
###############################

./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/ceballos/catalog cern/filler/014a/ p10-we-v26 noskim ComputeFakeRates /home/sixie/hist 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/ceballos/catalog cern/filler/014a/ p10-wm-v26 noskim ComputeFakeRates /home/sixie/hist 0
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/sixie/catalog cern/filler/014/ s10-we-s36v9 noskim ComputeFakeRates /home/sixie/hist 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/ceballos/catalog cern/filler/014a/ p10-wjets-mg-v26 noskim ComputeFakeRates /home/sixie/hist 1000
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/ceballos/catalog cern/filler/014a/ p10-w1jets-0-100-v26 noskim ComputeFakeRates /home/sixie/hist 1000
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/ceballos/catalog cern/filler/014a/ p10-wc0jets-v26 noskim ComputeFakeRates /home/sixie/hist 1000






./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filler/013/ s09-zee-7-mc3 noskim ComputeFakeRates /home/sixie/hist 7
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filler/013/ s09-zmm-7-mc3 noskim ComputeFakeRates /home/sixie/hist 6


./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filefi/015/ f10-we-z2-v12 noskim ComputeFakeRates /home/sixie/hist 1 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filefi/015/ f10-wm-z2-v12 noskim ComputeFakeRates /home/sixie/hist 0 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filefi/015/ f10-wem-powheg-c10-v12 noskim ComputeFakeRates /home/sixie/hist 1 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filefi/015/ f10-wep-powheg-c10-v12 noskim ComputeFakeRates /home/sixie/hist 1 1 
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runCommissioning/runComputeFakeRates.C+ /home/mitprod/catalog cern/filefi/015/ f10-wmm-powheg-c10-v12 noskim ComputeFakeRates /home/sixie/hist 0 1
