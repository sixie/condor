#!/bin/tcsh

echo "Arguments: $*"
set neventsPerJob=$1
set jobNumber=$2
set label=$3
set RScale=$4
set FScale=$5
set IL1=$6
set IL2=$7

setenv SCRAM_ARCH slc5_ia32_gcc434
cd /build/sixie/releases/CMSSW_3_11_1/src/
eval `scramv1 runtime -csh`

mkdir -p /data/blue/sixie/MCGenerators/MCAtNLO/$label/$jobNumber
cd /data/blue/sixie/MCGenerators/MCAtNLO/$label/$jobNumber
echo " "; echo "Show where we are"; echo " "
pwd
## env

set iseed=`date -u '+%s'| awk '{print substr($1,length($1)-5,length($1))}' | sed 's/0*//'` 

cat /data/blue/sixie/MCGenerators/MCAtNLO/WWNLOinput.template | sed "s/XX_SEED_XX/${iseed}${jobNumber}/" | sed "s/XX_RSCALE_XX/${RScale}/g" | sed "s/XX_FSCALE_XX/${FScale}/g" | sed "s/XX_IL1_XX/${IL1}/" | sed "s/XX_IL2_XX/${IL2}/" | sed "s/XX_NEVENTSPERJOB_XX/$neventsPerJob/" >! /data/blue/sixie/MCGenerators/MCAtNLO/$label/$jobNumber/WWNLOinput

/data/blue/sixie/MCGenerators/MCAtNLO/WWNLO_EXE_LHAPDF < /data/blue/sixie/MCGenerators/MCAtNLO/$label/$jobNumber/WWNLOinput

cat /data/blue/sixie/MCGenerators/MCAtNLO/WWMCAtNLOToHerwigTemplate.py | sed "s/XX_SEED_XX/$iseed/g"  | sed "s/XX_INPUTFILE_XX/\/data\/blue\/sixie\/MCGenerators\/MCAtNLO\/$label\/$jobNumber\/WW.events/"  | sed "s/XX_OUTPUTNAME_XX/${label}_${jobNumber}/"  >! WWMCAtNLOToHerwig_${label}_${jobNumber}.py

#cmsRun WWMCAtNLOToHerwig_${label}_${jobNumber}.py

cat /data/blue/sixie/MCGenerators/MCAtNLO/WWMCAtNLOToLHETemplate.py | sed "s/XX_SEED_XX/$iseed/g"  | sed "s/XX_INPUTFILE_XX/\/data\/blue\/sixie\/MCGenerators\/MCAtNLO\/$label\/$jobNumber\/WW.events/"  >! WWMCAtNLOToLHE_${label}_${jobNumber}.py

mv writer.lhe ${label}_${jobNumber}.lhe

ls 

echo "DONE"
hostname

exit $status
