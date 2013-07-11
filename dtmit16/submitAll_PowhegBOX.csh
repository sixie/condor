########################################################################################################
#Powheg 
########################################################################################################
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH115 115 0.00309
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH120 120 0.00348
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH130 130 0.00488
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH140 140 0.00814
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH150 150 0.0173
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH160 160 0.0830
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH170 170 0.380
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH180 180 0.631
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH190 190 1.04
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH200 200 1.43
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH210 210 1.85
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH220 220 2.31
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH230 230 2.83
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH250 250 4.04
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH300 300 8.43
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH350 350 15.2
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH400 400 29.2
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH450 450 47.0
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH500 500 68.0
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH550 550 93.2
./submit_PowhegBOX.csh 10 10000 PowhegPythia_ggHToWW_mH600 600 123


########################################################################################################
#Powheg  Systematics
########################################################################################################

./submit_PowhegBOX.csh 100 10000 PowhegPythia_ggHToWW_mH130_RScale0_FScale0 130 0.00488 1 1 
./submit_PowhegBOX.csh 100 10000 PowhegPythia_ggHToWW_mH130_RScaleUp_FScaleUp 130 0.00488 2 2 
./submit_PowhegBOX.csh 100 10000 PowhegPythia_ggHToWW_mH130_RScaleDown_FScaleDown 130 0.00488 0.5 0.5
