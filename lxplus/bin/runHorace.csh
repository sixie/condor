#!/bin/tcsh

echo "Arguments: $*"
set neventsPerJob=$1
set jobNumber=$2
set label=$3
set COMEnergy=$4
set HoraceMode=$5
set HoraceOrder=$6
set HoraceEWInputScheme=$7
set HoraceWeightedEvents=$8
set HoraceDir=$9

set workDir=`pwd`

cd /home/sixie/CMSSW_genStudy/src/
eval `scramv1 runtime -csh`

mkdir -p /home/sixie/MCGenerators/Horace/condor/$label/$jobNumber
cd /home/sixie/MCGenerators/Horace/condor/$label/$jobNumber
echo " "; echo "Show where we are"; echo " "
pwd
## env

set iseed=`date -u '+%s'| awk '{print substr($1,length($1)-5,length($1))}' | sed 's/0*//'`

cat /home/sixie/MCGenerators/Horace/condor/input-test_template | sed "s/XX_SEED_XX/${iseed}${jobNumber}/" | sed "s/XX_COMENERGY_XX/$COMEnergy/" | sed "s/XX_NEVENTSPERJOB_XX/$neventsPerJob/" | sed "s/XX_DIR_XX/$neventsPerJob/" | sed "s/XX_MODE_XX/$HoraceMode/" | sed "s/XX_ORDER_XX/$HoraceOrder/" | sed "s/XX_EWINPUTSCHEME_XX/$HoraceEWInputScheme/" | sed "s/XX_WEIGHTED_XX/$HoraceWeightedEvents/" | sed "s/XX_DIR_XX/$HoraceDir/">! /home/sixie/MCGenerators/Horace/condor/$label/$jobNumber/Horace.input


/home/sixie/MCGenerators/Horace/horace-3.1-web/horace < /home/sixie/MCGenerators/Horace/condor/$label/$jobNumber/Horace.input

#Convert horace output to LHE file
/home/sixie/MCGenerators/Horace/convertHoraceToLHE.pl --inputConfFile=/home/sixie/MCGenerators/Horace/condor/$label/$jobNumber/$HoraceDir/horace_3.1_Z_e_exp_$HoraceWeightedEvents.conf --inputEventFile=/home/sixie/MCGenerators/Horace/condor/$label/$jobNumber/$HoraceDir/horace_3.1_Z_e_exp_$HoraceWeightedEvents.evts > /home/sixie/MCGenerators/Horace/condor/$label/$jobNumber/$HoraceDir/horace_3.1_Z_e_exp_$HoraceWeightedEvents.lhe


#Feed LHE into CMSSW Pythia for showering
cat /home/sixie/CMSSW_genStudy/src/LHEToPythiaTemplate.py | sed "s/XX_SEED_XX/$iseed/g" | sed "s/XX_COMENERGY_XX/$COMEnergy/" | sed "s/XX_INPUTLHEFILE_XX/\/home\/sixie\/MCGenerators\/Horace\/condor\/$label\/$jobNumber\/$HoraceDir\/horace_3.1_Z_e_exp_$HoraceWeightedEvents.lhe/" | sed "s/XX_OUTPUTNAME_XX/${label}_${jobNumber}/" >! /home/sixie/MCGenerators/Horace/condor/$label/$jobNumber/LHEToPythia.py

cd /home/sixie/CMSSW_genStudy/src/
cmsRun /home/sixie/MCGenerators/Horace/condor/$label/$jobNumber/LHEToPythia.py

ls 

mv ${label}_${jobNumber}_000.root /home/sixie/MCGenerators/Horace/condor/$label/$jobNumber/

echo "DONE"
hostname

exit $status

#
# ./bin/runHorace.csh 100000 1 Horace_Zee14TeV 14000 new exp 1 unweighted Zee
