#!/bin/tcsh

echo "Arguments: $*"
set neventsPerJob=$1
set jobNumber=$2
set label=$3
set HiggsMass=$4
set HiggsWidth=$5

setenv SCRAM_ARCH slc5_ia32_gcc434
cd /build/sixie/releases/CMSSW_3_11_1/src/
eval `scramv1 runtime -csh`

mkdir -p /data/blue/sixie/MCGenerators/MCAtNLO/$label/$jobNumber
cd /data/blue/sixie/MCGenerators/MCAtNLO/$label/$jobNumber
echo " "; echo "Show where we are"; echo " "
pwd
## env

set iseed=`date -u '+%s'| awk '{print substr($1,length($1)-5,length($1))}' | sed 's/0*//'` 

cat /data/blue/sixie/MCGenerators/MCAtNLO/HWWNLOinput.template | sed "s/XX_SEED_XX/${iseed}${jobNumber}/" | sed "s/XX_HIGGSMASS_XX/$HiggsMass/" | sed "s/XX_HIGGSWIDTH_XX/$HiggsWidth/" | sed "s/XX_NEVENTSPERJOB_XX/$neventsPerJob/" >! /data/blue/sixie/MCGenerators/MCAtNLO/$label/$jobNumber/HWWNLOinput

/data/blue/sixie/MCGenerators/MCAtNLO/HWWNLO_EXE_LHAPDF < /data/blue/sixie/MCGenerators/MCAtNLO/$label/$jobNumber/HWWNLOinput

cat /data/blue/sixie/MCGenerators/MCAtNLO/HWWMCAtNLOToHerwigTemplate.py | sed "s/XX_SEED_XX/$iseed/g"  | sed "s/XX_INPUTFILE_XX/\/data\/blue\/sixie\/MCGenerators\/MCAtNLO\/$label\/$jobNumber\/HWW.events/"  | sed "s/XX_OUTPUTNAME_XX/${label}_${jobNumber}/"  >! HWWMCAtNLOToHerwig_${label}_${jobNumber}.py

cmsRun HWWMCAtNLOToHerwig_${label}_${jobNumber}.py

ls 

#mv ${label}_${jobNumber}_000.root /home/sixie/MCGenerators/powheg/condor/$label/$jobNumber/

echo "DONE"
hostname

exit $status
