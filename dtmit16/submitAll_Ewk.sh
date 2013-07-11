################################
# Acceptance Studies
###############################
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runZeeAcceptance.C+ /home/ceballos/catalog/cern filler/014a/ p10-zee-powhep-cteq66-v26 noskim ZeeAcceptance /home/sixie/hist 10
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runZeeAcceptance.C+ /home/ceballos/catalog/cern filler/014a/ p10-zee-v26 noskim ZeeAcceptance /home/sixie/hist 10
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runZeeAcceptance.C+ /home/sixie/catalog/cern filler/013/ p10-zee-powheg-v26 noskim ZeeAcceptance /home/sixie/hist 10
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runZeeAcceptance.C+ /home/sixie/catalog/cern filler/014/ p10-zee-puAve1-v26 noskim ZeeAcceptance /home/sixie/hist 10

./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runZeeAcceptance.C+ /home/ceballos/catalog/cern filler/014a/ p10-zee-powhep-cteq66-v26 noskim ZeeAcceptance_MSTW2008 /home/sixie/hist 11

./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runZmumuAcceptance.C+ /home/ceballos/catalog/cern filler/014a/ p10-zmm-powhep-cteq66-v26 noskim ZmmAcceptance /home/sixie/hist 10
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runZmumuAcceptance.C+ /home/ceballos/catalog/cern filler/014a/ p10-zmm-powhep-cteq66-v26 noskim ZmmAcceptance_MSTW2008 /home/sixie/hist 11



################################
# Data
###############################

#10 Data
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/sixie/catalog cern/filler/014/ c10-eg-rrjun14 noskim EwkAnalysis /home/sixie/hist -1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/sixie/catalog cern/filler/014/ run2010a-eg-rrjun14 noskim EwkAnalysis /home/sixie/hist -1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/sixie/catalog cern/filler/014/ run2010a-eg-prv4-V4 noskim EwkAnalysis /home/sixie/hist -1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/mitprod/catalog cern/filefi/014/ r10a-eg-s17 noskim EwkAnalysis /home/sixie/hist -1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/mitprod/catalog cern/filefi/014/ r10b-el-pr-v2 noskim EwkAnalysis /home/sixie/hist -1

./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/sixie/catalog cern/filler/014/ run2010a-eg-rr380 noskim EwkAnalysis /home/sixie/hist -1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/sixie/catalog cern/filler/014/ run2010a-eg-rr381 noskim EwkAnalysis /home/sixie/hist -1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/sixie/catalog cern/filler/014/ run2010a-eg-rr382 noskim EwkAnalysis /home/sixie/hist -1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ r2010a-hww-eg-preco-v1 noskim EwkAnalysis /home/sixie/hist -1

################################
# Early MC
###############################
#7TeV MinBias MC


./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-hww-qcdem2030-v26 noskim EwkAnalysis /home/sixie/hist 11
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-hww-qcdem3080-v26 noskim EwkAnalysis /home/sixie/hist 12
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-hww-qcdem80170-v26 noskim EwkAnalysis /home/sixie/hist 13
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-hww-qcdbc2030-v26 noskim EwkAnalysis /home/sixie/hist 14
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-hww-qcdbc3080-v26 noskim EwkAnalysis /home/sixie/hist 15
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-hww-qcdbc80170-v26 noskim EwkAnalysis /home/sixie/hist 16

./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-qcd15-v26 noskim EwkAnalysis /home/sixie/hist 100
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-qcd30-v26 noskim EwkAnalysis /home/sixie/hist 101
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-qcd80-v26 noskim EwkAnalysis /home/sixie/hist 102
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-pjet15-v26 noskim EwkAnalysis /home/sixie/hist 200
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-pjet30-v26 noskim EwkAnalysis /home/sixie/hist 201
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-pjet80-v26 noskim EwkAnalysis /home/sixie/hist 202

./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/sixie/catalog cern/filler/014/ p10-qcd20-dt6-v26 noskim EwkAnalysis /home/sixie/hist 110
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/skims/014a/ p10-qcd20-dt6-v26 noskim EwkAnalysis /home/sixie/hist 110



################################
# W,Z
###############################

./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-we-v26 noskim EwkAnalysis /home/sixie/hist 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-wmm-powhep-cteq66-v26 noskim EwkAnalysis /home/sixie/hist 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-wmp-powhep-cteq66-v26 noskim EwkAnalysis /home/sixie/hist 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-wem-powhep-cteq66-v26 noskim EwkAnalysis /home/sixie/hist 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-wep-powhep-cteq66-v26 noskim EwkAnalysis /home/sixie/hist 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-wtm-powhep-cteq66-v26 noskim EwkAnalysis /home/sixie/hist 2
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-wtp-powhep-cteq66-v26 noskim EwkAnalysis /home/sixie/hist 2
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-wg-v26 noskim EwkAnalysis /home/sixie/hist 17

./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-zee-powhep-cteq66-v26 noskim EwkAnalysis /home/sixie/hist 7
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-ztt-powhep-cteq66-v26 noskim EwkAnalysis /home/sixie/hist 8
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-ttbar2l-v26 noskim EwkAnalysis /home/sixie/hist 4
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-wz3l-v26 noskim EwkAnalysis /home/sixie/hist 27
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-zz-v26 noskim EwkAnalysis /home/sixie/hist 28
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/ceballos/catalog cern/filler/014a/ p10-ww2l-v26 noskim EwkAnalysis /home/sixie/hist 29
./submit.csh /home/sixie/CMSSW_localAnalysis/src/MitHiggs/macros/runEwk/runEwkAnalysis.C+ /home/sixie/catalog cern/filler/014/ p10-diphoton-mg-v26 noskim EwkAnalysis /home/sixie/hist 35

