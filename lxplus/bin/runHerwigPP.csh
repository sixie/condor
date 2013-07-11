#!/bin/tcsh

echo "Arguments: $*"
set neventsPerJob=$1
set jobNumber=$2
set label=$3
set HiggsMass=$4

setenv SCRAM_ARCH slc5_ia32_gcc434
set workDir=`pwd`

mkdir -p /data/blue/sixie/MCGenerators/HerwigPP/$label/$jobNumber
cd /data/blue/sixie/MCGenerators/HerwigPP/$label/$jobNumber
echo " "; echo "Show where we are"; echo " "
pwd
## env

set iseed=`date -u '+%s'| awk '{print substr($1,length($1)-5,length($1))}' | sed 's/0*//'`

cat /data/blue/sixie/MCGenerators/HerwigPP/HerwigPP_PowhegHiggsToWW_Template.py | sed "s/XX_SEED_XX/${iseed}${jobNumber}/" | sed "s/XX_HIGGSMASS_XX/$HiggsMass/" | sed "s/XX_NEVENTSPERJOB_XX/$neventsPerJob/"  | sed "s/XX_OUTPUTNAME_XX/${label}_${jobNumber}/"  >! /data/blue/sixie/MCGenerators/HerwigPP/$label/$jobNumber/HerwigPP_PowhegHiggsToWW_mH${HiggsMass}.py

cd /build/sixie/releases/CMSSW_3_11_1/src/
eval `scramv1 runtime -csh`
cd /data/blue/sixie/MCGenerators/HerwigPP/$label/$jobNumber
cmsRun /data/blue/sixie/MCGenerators/HerwigPP/$label/$jobNumber/HerwigPP_PowhegHiggsToWW_mH${HiggsMass}.py
ls 


echo "DONE"
hostname

exit $status
