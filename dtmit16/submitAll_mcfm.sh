#!/bin/tcsh

########################################################################################################
#Inclusive Higgs production
########################################################################################################
set jobNumber = 0;

#foreach m( 115 120 130 140 150 160 170 180 190 200 210 220 230 250 300 350 400 450 500 550 600) 
 foreach m( 400 450 500 ) 

    set scale = `python -c "print $m / 2.0"`
    set scaleUp = $m
    set scaleDown = `python -c "print $m / 4.0"`

    @ jobNumber++
    ./submit_mcfm.csh ${jobNumber} ggH ${m} ${scale} ${scale} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/
#    @ jobNumber++
#    ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${scaleUp} ${scaleUp} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/
#    @ jobNumber++
#    ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${scaleDown} ${scaleDown} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/
#    @ jobNumber++
#    ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${scaleUp} ${scaleDown} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/
#    @ jobNumber++
#    ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${scaleDown} ${scaleUp} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/

end


# ########################################################################################################
# #Scale Variation
# ########################################################################################################

# set jobNumber = 0;

# #foreach m( 115 120 130 140 150 160 170 180 190 200 210 220 230 250 300 350 400 450 500 550 600) 
# foreach m( 180 ) 

#     set scale = `python -c "print $m / 2.0"`
#     set scaleUp = $m
#     set scaleDown = `python -c "print $m / 4.0"`

#     @ jobNumber++
#     ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${scale} ${scale} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/
#    @ jobNumber++
#    ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${scaleUp} ${scaleUp} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/
#    @ jobNumber++
#    ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${scaleDown} ${scaleDown} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/
#    @ jobNumber++
#    ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${scaleUp} ${scaleDown} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/
#    @ jobNumber++
#    ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${scaleDown} ${scaleUp} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/

# end

# set jobNumber = 0;

# #foreach m( 115 120 130 140 150 160 170 180 190 200 210 220 230 250 300 350 400 450 500 550 600) 
# foreach m( 400 450 500 550 600 ) 

#      set scale = `python -c "print $m / 2.0"`
#      set scaleUp = $m
#      set scaleDown = `python -c "print $m / 4.0"`

#     @ jobNumber++
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${scale} ${scale} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/
#     @ jobNumber++
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${scaleUp} ${scaleUp} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/
#     @ jobNumber++
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${scaleDown} ${scaleDown} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/
#     @ jobNumber++
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${scaleUp} ${scaleDown} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/
#     @ jobNumber++
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${scaleDown} ${scaleUp} MSTW2008nlo68cl.LHgrid 0 /data/blue/sixie/MCGenerators/MCFM/

# end



# ########################################################################################################
# #PDFs : CT10
# ########################################################################################################

# set jobNumber = 0;
# foreach m( 115 120 130 140 150 160 170 180 190 200 210 220 230 250 300 350 400 450 500 550 600) 

#   foreach p( `python -c "for i in range(1, 53): print i"` ) 
#     @ jobNumber++
#     ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} CT10.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} CT10.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#   end

#   ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} CT10.LHgrid 3 /data/blue/sixie/MCGenerators/MCFM/
#   ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} CT10.LHgrid 7 /data/blue/sixie/MCGenerators/MCFM/
#   ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} CT10.LHgrid 3 /data/blue/sixie/MCGenerators/MCFM/
#   ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} CT10.LHgrid 7 /data/blue/sixie/MCGenerators/MCFM/


# end

# ########################################################################################################
# #PDFs : MSTW2008 NLO 68cl
# ########################################################################################################

# set jobNumber = 0;
# foreach m( 115 120 130 140 150 160 170 180 190 200 210 220 230 250 300 350 400 450 500 550 600) 

#   foreach p( `python -c "for i in range(1, 41): print i"` ) 
#     @ jobNumber++
#     ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} MSTW2008nlo68cl.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} MSTW2008nlo68cl_asmz-68clhalf.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} MSTW2008nlo68cl_asmz+68clhalf.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} MSTW2008nlo68cl_asmz-68cl.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} MSTW2008nlo68cl_asmz+68cl.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} MSTW2008nlo68cl.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} MSTW2008nlo68cl_asmz-68clhalf.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} MSTW2008nlo68cl_asmz+68clhalf.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} MSTW2008nlo68cl_asmz-68cl.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} MSTW2008nlo68cl_asmz+68cl.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#   end

# end

# ########################################################################################################
# #PDFs : NNPDF 2.0
# ########################################################################################################

# set jobNumber = 0;
# foreach m( 115 120 130 140 150 160 170 180 190 200 210 220 230 250 300 350 400 450 500 550 600) 

#   foreach p( `python -c "for i in range(1, 101): print i"` ) 
#     @ jobNumber++
#     ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} NNPDF20_100.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} NNPDF20_100.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#   end

#   foreach p( `python -c "for i in range(1, 73): print i"` ) 
#     @ jobNumber++
#     ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} NNPDF20_as_0118_100.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} NNPDF20_as_0120_100.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} NNPDF20_as_0118_100.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} NNPDF20_as_0120_100.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#   end

#   foreach p( `python -c "for i in range(1, 28): print i"` ) 
#     @ jobNumber++
#     ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} NNPDF20_as_0117_100.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} NNPDF20_as_0121_100.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} NNPDF20_as_0117_100.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} NNPDF20_as_0121_100.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#   end

#   foreach p( `python -c "for i in range(1, 6): print i"` ) 
#     @ jobNumber++
#     ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} NNPDF20_as_0116_100.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH1Jet ${m} ${m} ${m} NNPDF20_as_0122_100.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} NNPDF20_as_0116_100.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#     ./submit_mcfm.csh ${jobNumber} ggH2Jet ${m} ${m} ${m} NNPDF20_as_0122_100.LHgrid $p /data/blue/sixie/MCGenerators/MCFM/
#   end

# end


########################################################################################################
#WW+jets
########################################################################################################

# ./submit_mcfm_WW.csh 1 WWincl 80 80 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WWincl 160 160 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WWincl 40 40 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WWincl 160 80 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WWincl 40 80 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WWincl 80 160 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WWincl 80 40 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WWincl 160 40 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WWincl 40 160 MSTW2008nlo68cl.LHgrid 0

# ./submit_mcfm_WW.csh 1 WW1Jet 80 80 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WW1Jet 160 160 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WW1Jet 40 40 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WW1Jet 160 80 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WW1Jet 40 80 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WW1Jet 80 160 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WW1Jet 80 40 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WW1Jet 160 40 MSTW2008nlo68cl.LHgrid 0
# ./submit_mcfm_WW.csh 1 WW1Jet 40 160 MSTW2008nlo68cl.LHgrid 0
