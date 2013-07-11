#!/bin/tcsh

echo "Arguments: $*"
set neventsPerJob=$1
set jobNumber=$2
set label=$3
set HiggsMass=$4
set HiggsWidth=$5
set FScale=$6
set RScale=$7

setenv SCRAM_ARCH slc5_ia32_gcc434

set workDir=`pwd`

mkdir -p /data/blue/sixie/MCGenerators/PowhegBOX/$label/$jobNumber
cd /data/blue/sixie/MCGenerators/PowhegBOX/$label/$jobNumber
echo " "; echo "Show where we are"; echo " "
pwd
## env

set iseed=`date -u '+%s'| awk '{print substr($1,length($1)-5,length($1))}' | sed 's/0*//'`

cat /data/blue/sixie/MCGenerators/PowhegBOX/powheg.input.template | sed "s/XX_SEED_XX/${iseed}${jobNumber}/" | sed "s/XX_HIGGSMASS_XX/$HiggsMass/" | sed "s/XX_HIGGSWIDTH_XX/$HiggsWidth/" | sed "s/XX_NEVENTSPERJOB_XX/$neventsPerJob/" | sed "s/XX_FSCALE_XX/$FScale/" | sed "s/XX_RSCALE_XX/$RScale/" >! /data/blue/sixie/MCGenerators/PowhegBOX/$label/$jobNumber/powheg.input

cd /build/sixie/releases/CMSSW_3_11_1/src/
eval `scramv1 runtime -csh`
cd -

setenv LHAPATH /afs/cern.ch/cms/slc5_ia32_gcc434/external/lhapdf/5.6.0-cms4/share/lhapdf/PDFsets/
setenv LD_LIBRARY_PATH /afs/cern.ch/cms/slc5_ia32_gcc434/external/lhapdf/5.6.0-cms4/lib/:$LD_LIBRARY_PATH

cd /data/blue/sixie/MCGenerators/PowhegBOX/$label/$jobNumber/
/home/sixie/MCGenerators/powheg/POWHEG-BOX/gg_H/pwhg_main


cat /data/blue/sixie/MCGenerators/PowhegBOX/LHEToPythiaTemplate.py | sed "s/XX_SEED_XX/$iseed/g" | sed "s/XX_INPUTLHEFILE_XX/\/data\/blue\/sixie\/MCGenerators\/PowhegBOX\/$label\/$jobNumber\/pwgevents.lhe/" | sed "s/XX_OUTPUTNAME_XX/${label}_${jobNumber}/" >! /data/blue/sixie/MCGenerators/PowhegBOX/$label/$jobNumber/LHEToPythia.py

cmsRun /data/blue/sixie/MCGenerators/PowhegBOX/$label/$jobNumber/LHEToPythia.py

ls 

echo "DONE"
hostname

exit $status
