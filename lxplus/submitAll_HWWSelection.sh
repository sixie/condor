
################################
##11 Data
###############################

#Dilepton PD's
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-del-pr-v1_1 noskim HwwAnalysis /home/sixie/hist -2 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-dmu-pr-v1_1 noskim HwwAnalysis /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-mueg-pr-v1_1 noskim HwwAnalysis /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-sel-pr-v1_1 noskim HwwAnalysis /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-smu-pr-v1_1 noskim HwwAnalysis /home/sixie/hist -2 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-del-pr-v2_1 noskim HwwAnalysis /home/sixie/hist -2 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-dmu-pr-v2_1 noskim HwwAnalysis /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-mueg-pr-v2_1 noskim HwwAnalysis /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-sel-pr-v2_1 noskim HwwAnalysis /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-smu-pr-v2_1 noskim HwwAnalysis /home/sixie/hist -2 1

#Other PD's
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-pho-pr-v1 noskim HwwAnalysis /home/sixie/hist -2 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-phoh-pr-v1 noskim HwwAnalysis /home/sixie/hist -2 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-elh-pr-v1 noskim HwwAnalysis /home/sixie/hist -2 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-muh-pr-v1 noskim HwwAnalysis /home/sixie/hist -2 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-jet-pr-v1 noskim HwwAnalysis /home/sixie/hist -2 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-t-pr-v1 noskim HwwAnalysis /home/sixie/hist -2 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-tpx-pr-v1 noskim HwwAnalysis /home/sixie/hist -2 1

#Fakes
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-smu-pr-v1 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-del-pr-v1 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-dmu-pr-v1 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/020/ r11a-mueg-pr-v1 noskim FakeRate /home/sixie/hist -1 1



################################
# MC Bkg
###############################

#2011 MC 
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-ww2l-v1g1-pu noskim HwwAnalysis /home/sixie/hist 22 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-ggww-v1g1-pu noskim HwwAnalysis /home/sixie/hist 23 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-wz-v1g1-pu noskim HwwAnalysis /home/sixie/hist 30 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-zz-v1g1-pu noskim HwwAnalysis /home/sixie/hist 40 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-ttj-v1g1-pu noskim HwwAnalysis /home/sixie/hist 50 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-ttj-powheg-v1g1-pu noskim HwwAnalysis /home/sixie/hist 50 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-stop-v1g1-pu noskim HwwAnalysis /home/sixie/hist 60 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-ttop-v1g1-pu noskim HwwAnalysis /home/sixie/hist 61 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-wtop-v1g1-pu noskim HwwAnalysis /home/sixie/hist 62 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-zeem20-v1g1-pu noskim HwwAnalysis /home/sixie/hist 6 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-zmmm20-v1g1-pu noskim HwwAnalysis /home/sixie/hist 7 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-zttm20-v1g1-pu noskim HwwAnalysis /home/sixie/hist 8 1 
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-zee1020-v1g1-pu noskim HwwAnalysis /home/sixie/hist 9 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-zmm1020-v1g1-pu noskim HwwAnalysis /home/sixie/hist 10 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-ztt1020-v1g1-pu noskim HwwAnalysis /home/sixie/hist 11 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-wjetsl-v1g1-pu noskim HwwAnalysis /home/sixie/hist 3 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ w10-vg-mg-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 12 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-zll50-v1g1-pu noskim HwwAnalysis /home/sixie/hist 6 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/020/ w10-wjets-z2-v8-pu11-2l noskim HwwAnalysis /home/sixie/hist 333 1



./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runMacros/runSmurfGenNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-vvj-v1g1-pu_1 noskim HwwAcceptance /home/sixie/hist 22 1
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runMacros/runSmurfGenNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-ww2l-mcnlo-v1g1-pu_1 noskim HwwAcceptance /home/sixie/hist 1022 1
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runMacros/runSmurfGenNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-ww2lup-mcnlo-v1g1-pu_1 noskim HwwAcceptance /home/sixie/hist 1022 1
./submit.csh /home/sixie/CMSSW_analysis/src/MitHiggs/macros/runMacros/runSmurfGenNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-ww2ldown-mcnlo-v1g1-pu_1 noskim HwwAcceptance /home/sixie/hist 1022 1



./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-pj15_3000-v1g1-pu noskim HwwAnalysis /home/sixie/hist 110 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-pj15_30-v1g1-pu noskim HwwAnalysis /home/sixie/hist 120
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-pj30_50-v1g1-pu noskim HwwAnalysis /home/sixie/hist 121 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-pj50_80-v1g1-pu noskim HwwAnalysis /home/sixie/hist 122
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-pj80_120-v1g1-pu noskim HwwAnalysis /home/sixie/hist 123
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-pj120_170-v1g1-pu noskim HwwAnalysis /home/sixie/hist 124
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-pj170_300-v1g1-pu noskim HwwAnalysis /home/sixie/hist 125

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-qcd15_3000-v1g1-pu noskim HwwAnalysis /home/sixie/hist 210 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-qcd15_30-v1g1-pu noskim HwwAnalysis /home/sixie/hist 220 
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-qcd30_50-v1g1-pu noskim HwwAnalysis /home/sixie/hist 221  1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-qcd50_80-v1g1-pu noskim HwwAnalysis /home/sixie/hist 222 
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-qcd80_120-v1g1-pu noskim HwwAnalysis /home/sixie/hist 223 
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-qcd120_170-v1g1-pu noskim HwwAnalysis /home/sixie/hist 224 
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-qcd170_300-v1g1-pu noskim HwwAnalysis /home/sixie/hist 225 
 

################################
# Higgs MC Signal
###############################
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h115ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h115wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h115ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h115ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h115wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h115ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h115ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102



./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h120ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h120wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h120ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h120ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h120wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h120ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h120ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h130ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h130wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h130ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h130ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h130wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h130ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h130ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h140ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h140wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h140ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h140ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h140wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h140ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h140ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102


./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h150ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h150wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h150ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h150ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h150wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h150ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h150ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h160ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h160wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h160ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h160ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h160wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h160ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h160ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h170ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h170wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h170ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h170ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h170wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h170ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h170ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h180ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h180wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h180ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h180ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h180wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h180ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h180ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h190ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h190wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h190ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h190ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h190wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h190ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h190ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h200ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h200wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h200ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h200ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h200wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h200ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h200ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h210ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h210wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h210ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h210ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h210wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h210ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h210ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h220ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h220wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h220ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h220ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h220wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h220ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h220ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h230ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h230wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h230ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h230ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h230wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h230ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h230ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h250ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h250wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h250ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h250ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h250wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h250ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h250ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h300ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h300wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h300ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h300ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h300wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h300ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h300ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h350ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h350wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h350ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h350ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h350wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h350ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h350ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h400ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h400wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h400ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h400ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h400wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h400ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h400ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h450ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h450wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h450ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h450ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h450wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h450ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h450ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102


./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h500ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h500wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h500ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h500ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h500wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h500ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h500ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h550ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h550wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h550ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h550ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h550wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h550ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h550ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h600ww2l-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h600wwlt-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h600ww2t-gf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h600ww2l-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h600wwlt-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h600ww2t-vbf-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/020/ p11-h600ww2l-vtth-v1g1-pu noskim HwwAnalysis /home/sixie/hist 1102




################################
#10 Data
###############################

#Lepton PD's
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ r10a-eg-d22 noskim HwwAnalysis /home/sixie/hist -2 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ r10a-mu-d22 noskim HwwAnalysis /home/sixie/hist -2 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ r10b-el-d22 noskim HwwAnalysis /home/sixie/hist -2 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ r10b-mu-d22 noskim HwwAnalysis /home/sixie/hist -2 1

#Fakes
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/018/ r10a-eg-d22 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/018/ r10b-egmo-d22 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/018/ r10a-jmt-d22 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/018/ r10a-jm-d22 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/018/ r10b-jet-d22 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/018/ r10b-pho-d22 noskim FakeRate /home/sixie/hist -1 1

#Muon Fakes
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/018/ r10a-mu-d22 noskim FakeRate /home/sixie/hist -1 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwFakeRateNtupler.C+ /home/mitprod/catalog cern/filefi/018/ r10b-mu-d22 noskim FakeRate /home/sixie/hist -1 1



################################
# OLD MC samples
###############################
#Severe PU scenario
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-vv-mg-v8-pu11 noskim HwwAnalysis /home/sixie/hist 22 
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-ggww-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 23 
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-wz-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 30 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-zz-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 40 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-tt-mg-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 50 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-stop-mg-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 60 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-ttop-mg-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 61 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-wtop-mg-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 62 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-zee-powheg-c10-v8-pu11 noskim HwwAnalysis /home/sixie/hist 6 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-zmm-powheg-c10-v8-pu11 noskim HwwAnalysis /home/sixie/hist 7 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-ztt-powheg-c10-v8-pu11 noskim HwwAnalysis /home/sixie/hist 8 1 
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-zee1020-powheg-c10-v8-pu11 noskim HwwAnalysis /home/sixie/hist 9 
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-zmm1020-powheg-c10-v8-pu11 noskim HwwAnalysis /home/sixie/hist 10 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-ztt1020-powheg-c10-v8-pu11 noskim HwwAnalysis /home/sixie/hist 11 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-wjetsl-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 3 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-vg-mg-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 12 1


#2010 PU scenario
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-vv-mg-v8-pu noskim HwwAnalysis /home/sixie/hist 22 
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/01/ w10-ggww-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 23 
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/01/ w10-wz-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 30 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/01/ w10-zz-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 40 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/018/ w10-tt-mg-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 20050 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/01/ w10-stop-mg-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 60 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/01/ w10-ttop-mg-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 61 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/01/ w10-wtop-mg-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 62 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-zee-powheg-c10-v8-pu noskim HwwAnalysis /home/sixie/hist 6 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-zmm-powheg-c10-v8-pu noskim HwwAnalysis /home/sixie/hist 7 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-ztt-powheg-c10-v8-pu noskim HwwAnalysis /home/sixie/hist 8 1 
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/018/ w10-zee1020-powheg-c10-v8-pu noskim HwwAnalysis /home/sixie/hist 20009 
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/018/ w10-zmm1020-powheg-c10-v8-pu noskim HwwAnalysis /home/sixie/hist 20010 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/01/ w10-ztt1020-powheg-c10-v8-pu noskim HwwAnalysis /home/sixie/hist 11 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-wjetsl-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 3 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-vg-mg-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 12 1

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/018/ w10-zll-mg-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 20012 1



#old no PU samples
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-wjets-mg-z2-v12-pu noskim HwwAnalysis /home/sixie/hist 30003 1

#old alpgen WJets MC
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/014a/ p10-w0jets-0-100-v26 noskim HwwAnalysis /home/sixie/hist 20003 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/014a/ p10-w1jets-0-100-v26 noskim HwwAnalysis /home/sixie/hist 20003 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/014a/ p10-wc0jets-v26 noskim HwwAnalysis /home/sixie/hist 20003 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/014a/ p10-wbb0jets-v26 noskim HwwAnalysis /home/sixie/hist 20003 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/014a/ p10-wcc0jets-v26 noskim HwwAnalysis /home/sixie/hist 20003 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/014a/ p10-wc0jets-v26 noskim HwwAnalysis /home/sixie/hist 20003 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/014a/ p10-wc0jets-v26 noskim HwwAnalysis /home/sixie/hist 20003 1

################################
#OLD MC Signal
###############################
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-h160ww2l-gf-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-h160wwlt-gf-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-h160wwtt-gf-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-h130ww2l-gf-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 1100 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-h130wwlt-gf-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 1101 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-h130wwtt-gf-z2-v8-pu11 noskim HwwAnalysis /home/sixie/hist 1102 1

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-h160ww2l-gf-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 1100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-h160wwlt-gf-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 1101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-h160wwtt-gf-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 1102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-h130ww2l-gf-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 1100 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-h130wwlt-gf-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 1101 1
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/mitprod/catalog cern/filefi/019/ w10-h130wwtt-gf-z2-v8-pu noskim HwwAnalysis /home/sixie/hist 1102 1


./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h160ww2l-gf-z2-v12-pu noskim HwwAnalysis /home/sixie/hist 21100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h160wwlt-gf-z2-v12-pu noskim HwwAnalysis /home/sixie/hist 21101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h160wwtt-gf-z2-v12-pu noskim HwwAnalysis /home/sixie/hist 21102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h130ww2l-gf-z2-v12-pu noskim HwwAnalysis /home/sixie/hist 21100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h130wwlt-gf-z2-v12-pu noskim HwwAnalysis /home/sixie/hist 21101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h130wwtt-gf-z2-v12-pu noskim HwwAnalysis /home/sixie/hist 21102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h160ww2l-gf-z2-v12 noskim HwwAnalysis /home/sixie/hist 21100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h160wwlt-gf-z2-v12 noskim HwwAnalysis /home/sixie/hist 21101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h160wwtt-gf-z2-v12 noskim HwwAnalysis /home/sixie/hist 21102

./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h130ww2l-gf-z2-v12 noskim HwwAnalysis /home/sixie/hist 21100
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h130wwlt-gf-z2-v12 noskim HwwAnalysis /home/sixie/hist 21101
./submit.csh /home/sixie/CMSSW_analysis/src/EWKAna/Ntupler/macros/runHwwNtupler.C+ /home/ceballos/catalog cern/filler/015/ f10-h130wwtt-gf-z2-v12 noskim HwwAnalysis /home/sixie/hist 21102
