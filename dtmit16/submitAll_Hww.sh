################################
# Acceptance Studies
###############################


################################
# Data
###############################

#10 Data

./submit.csh /build/sixie/releases/CMSSW_3_9_7/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/017/ r10a-eg-d22 noskim WWAnalysis /home/sixie/hist -2
./submit.csh /build/sixie/releases/CMSSW_3_9_7/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/017/ r10a-mu-d22 noskim WWAnalysis /home/sixie/hist -2
./submit.csh /build/sixie/releases/CMSSW_3_9_7/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/017/ r10b-el-d22 noskim WWAnalysis /home/sixie/hist -2
./submit.csh /build/sixie/releases/CMSSW_3_9_7/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/017/ r10b-mu-d22 noskim WWAnalysis /home/sixie/hist -2


./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/015/ r10a-eg-s17 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/015/ r10b-egmo-pr-v2 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/015/ r10a-jmt-s17 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/015/ r10a-jm-s17 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/015/ r10b-jmt-pr-v2 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/015/ r10b-jet-pr-v2 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/015/ r10b-pho-pr-v2 noskim FakeRate /home/sixie/hist -1 1


################################
# MC
###############################

./submit.csh /build/sixie/releases/CMSSW_3_9_7/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h160ww2l-gf-z2-v12-pu noskim WWAnalysis /home/sixie/hist 1100
./submit.csh /build/sixie/releases/CMSSW_3_9_7/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h160wwlt-gf-z2-v12-pu noskim WWAnalysis /home/sixie/hist 1101
./submit.csh /build/sixie/releases/CMSSW_3_9_7/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h160wwtt-gf-z2-v12-pu noskim WWAnalysis /home/sixie/hist 1102


./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-vv-mg-z2-v12-pu noskim WWAnalysis /home/sixie/hist 22
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-ggww-z2-v12-pu noskim WWAnalysis /home/sixie/hist 23
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-wz-z2-v12-pu noskim WWAnalysis /home/sixie/hist 30
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-zz-z2-v12-pu noskim WWAnalysis /home/sixie/hist 40
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-tt-mg-z2-v12 noskim WWAnalysis /home/sixie/hist 50 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-stop-mg-z2-v12 noskim WWAnalysis /home/sixie/hist 60 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-ttop-mg-z2-v12 noskim WWAnalysis /home/sixie/hist 61 1 
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-wtop-mg-z2-v12 noskim WWAnalysis /home/sixie/hist 62 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-zee-powheg-c10-v12-pu noskim WWAnalysis /home/sixie/hist 6 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-zmm-powheg-c10-v12-pu noskim WWAnalysis /home/sixie/hist 7 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-ztt-powheg-c10-v12 noskim WWAnalysis /home/sixie/hist 8 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-zee1020-powheg-c10-v12-pu noskim WWAnalysis /home/sixie/hist 9 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-zmm1020-powheg-c10-v12-pu noskim WWAnalysis /home/sixie/hist 10 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-ztt1020-powheg-c10-v12 noskim WWAnalysis /home/sixie/hist 11 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-we-z2-v12-pu noskim WWAnalysis /home/sixie/hist 3 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-wm-z2-v12-pu noskim WWAnalysis /home/sixie/hist 4 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-wt-z2-v12-pu noskim WWAnalysis /home/sixie/hist 5 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-vg-mg-z2-v12-pu noskim WWAnalysis /home/sixie/hist 12 1



./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-ww2l-z2-v12-pu noskim WWAnalysis /home/sixie/hist 22
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-zll-filter-z2-v12-pu noskim WWAnalysis /home/sixie/hist 7
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/  noskim WWAnalysis /home/sixie/hist 16
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/  noskim WWAnalysis /home/sixie/hist 16
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/  noskim WWAnalysis /home/sixie/hist 16
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/  noskim WWAnalysis /home/sixie/hist 16


./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-wem-powheg-c10-v12-pu noskim WWAnalysis /home/sixie/hist 103
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-wep-powheg-c10-v12-pu noskim WWAnalysis /home/sixie/hist 113
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-wmm-powheg-c10-v12-pu noskim WWAnalysis /home/sixie/hist 104
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-wmp-powheg-c10-v12-pu noskim WWAnalysis /home/sixie/hist 114
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-wtm-powheg-c10-v12 noskim WWAnalysis /home/sixie/hist 105
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/015/ f10-wtp-powheg-c10-v12 noskim WWAnalysis /home/sixie/hist 115






################################
# W,Z
###############################




################################
# Spring10
###############################



################################
# Nov04 RERECO
###############################

./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/016/ r10a-eg-n04-2l noskim WWAnalysis /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/016/ r10a-mu-n04-2l noskim WWAnalysis /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/016/ r10b-eg-n04-2l noskim WWAnalysis /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/016/ r10b-mu-n04-2l noskim WWAnalysis /home/sixie/hist -1 1

./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/016/ r10a-eg-n04 noskim WWAnalysis /home/sixie/hist -2
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/016/ r10a-mu-n04 noskim WWAnalysis /home/sixie/hist -2
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/016/ r10b-el-n04 noskim WWAnalysis /home/sixie/hist -2
./submit.csh /home/sixie/CMSSW_localAnalysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/016/ r10b-mu-n04 noskim WWAnalysis /home/sixie/hist -2


