#!/bin/tcsh

echo "Arguments: $*"
set neventsPerJob=$1
set jobNumber=$2
set label=$3

setenv SCRAM_ARCH slc5_amd64_gcc434
cd /home/sixie/CMSSW_analysis/src/
eval `scramv1 runtime -csh`

rm -rf /data/blue/sixie/MCGenerators/Madgraph/Wgammastar/AIC/$label/$jobNumber
mkdir -p /data/blue/sixie/MCGenerators/Madgraph/Wgammastar/AIC/$label/$jobNumber
cd /data/blue/sixie/MCGenerators/Madgraph/Wgammastar/AIC/$label/$jobNumber
echo " "; echo "Show where we are"; echo " "
pwd
## env

set iseed=`date -u '+%s'| awk '{print substr($1,length($1)-5,length($1))}' | sed 's/0*//'` 

cp /data/blue/sixie/MCGenerators/Madgraph/Wgammastar/AIC/${label}_proc_card_mg5.dat /data/blue/sixie/MCGenerators/Madgraph/Wgammastar/AIC/$label/$jobNumber/proc_card_mg5_send.dat

cat /data/blue/sixie/MCGenerators/Madgraph/Wgammastar/AIC/${label}_run_card.dat | sed "s/XX_SEED_XX/${iseed}${jobNumber}/" | sed "s/XX_NEVENTS_XX/${neventsPerJob}/"  >! /data/blue/sixie/MCGenerators/Madgraph/Wgammastar/AIC/$label/$jobNumber/run_card_send.dat

/data/blue/sixie/MCGenerators/Madgraph/Wgammastar/AIC/create_gridpacks_template.sh ${label}_${jobNumber}

ls 

echo "DONE"
hostname

exit $status
