#!/bin/tcsh

echo "Arguments: $*"
set neventsPerJob=$1
set jobNumber=$2
set label=$3
set BeamEnergy=$4
set COMEnergy=$5
set Scheme=$6
set FactorizationScaleFactor=$7
set RenormalizationScaleFactor=$8

set workDir=`pwd`

mkdir -p /home/sixie/MCGenerators/powheg/condor/$label/$jobNumber
cd /home/sixie/MCGenerators/powheg/condor/$label/$jobNumber
echo " "; echo "Show where we are"; echo " "
pwd
## env

set iseed=`date -u '+%s'| awk '{print substr($1,length($1)-5,length($1))}' | sed 's/0*//'`

cat /home/sixie/MCGenerators/powheg/POWHEG-z/powheg.input.template | sed "s/XX_SEED_XX/${iseed}${jobNumber}/" | sed "s/XX_BEAMENERGY_XX/$BeamEnergy/" | sed "s/XX_NEVENTSPERJOB_XX/$neventsPerJob/" | sed "s/XX_SCHEME_XX/$Scheme/" | sed "s/XX_FACTORIZATIONSCALEFACTOR_XX/$FactorizationScaleFactor/" | sed "s/XX_RENORMALIZATIONSCALEFACTOR_XX/$RenormalizationScaleFactor/" >! /home/sixie/MCGenerators/powheg/condor/$label/$jobNumber/powheg.input


/home/sixie/MCGenerators/powheg/POWHEG-z/main-lhef 


cat /home/sixie/CMSSW_genStudy/src/LHEToPythiaTemplate.py | sed "s/XX_SEED_XX/$iseed/g" | sed "s/XX_COMENERGY_XX/$COMEnergy/" | sed "s/XX_INPUTLHEFILE_XX/\/home\/sixie\/MCGenerators\/powheg\/condor\/$label\/$jobNumber\/pwgevents.lhe/" | sed "s/XX_OUTPUTNAME_XX/${label}_${jobNumber}/" >! /home/sixie/MCGenerators/powheg/condor/$label/$jobNumber/LHEToPythia.py

cd /home/sixie/CMSSW_genStudy/src/
eval `scramv1 runtime -csh`
cmsRun /home/sixie/MCGenerators/powheg/condor/$label/$jobNumber/LHEToPythia.py

ls 

mv ${label}_${jobNumber}_000.root /home/sixie/MCGenerators/powheg/condor/$label/$jobNumber/

echo "DONE"
hostname

exit $status
