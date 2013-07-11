#!/bin/tcsh

hostname

echo "Arguments: $*"
set MH=$1
set Energy=$2

echo " "; echo " THINK - Staging file into castor .... ?"; echo " "

echo " "; echo "Initialize CMSSW"; echo " "
#setenv KRB5CCNAME /home/sixie/.krb5/ticket
set workDir=`pwd`

setenv SCRAM_ARCH slc5_amd64_gcc462
cd    /afs/cern.ch/work/s/sixie/public/releases/HiggsCombination/CMSSW_5_2_0/src/
eval `scramv1 runtime -csh`

cd /afs/cern.ch/user/s/sixie/work/public/combination/cards/ichep2012Final/
text2workspace.py ${MH}/comb_${Energy}.txt -m ${MH}
cd ${MH}

echo " "; echo "Show where we are"; echo " "
hostname
pwd
## env

klist

#setenv STAGE_SVCCLASS cmsprod

# Get ready to run in your home directory
echo " "; echo "Starting root job now"; echo " ";
echo /afs/cern.ch/work/s/sixie/public/releases/HiggsCombination/CMSSW_5_2_0/bin/slc5_amd64_gcc462/combine -M MaxLikelihoodFit -m $MH --rMin=-4 --rMax=4 --robustFit=1 --justFit --minimizerAlgo=SeqMinimizer --minimizerAlgoForMinos=SeqMinimizer --minimizerToleranceForMinos 0.001  -n SignalStrengthFit_fullcomb_${Energy} comb_${Energy}.root


/afs/cern.ch/work/s/sixie/public/releases/HiggsCombination/CMSSW_5_2_0/bin/slc5_amd64_gcc462/combine -M MaxLikelihoodFit -m $MH --rMin=-4 --rMax=4 --robustFit=1 --justFit --minimizerAlgo=SeqMinimizer --minimizerAlgoForMinos=SeqMinimizer --minimizerToleranceForMinos 0.001  -n SignalStrengthFit_fullcomb_${Energy} comb_${Energy}.root |& tee comb_${Energy}.log

#/afs/cern.ch/work/s/sixie/public/releases/HiggsCombination/CMSSW_5_2_0/bin/slc5_amd64_gcc462/combine -M MaxLikelihoodFit -m $MH --rMin=-4 --rMax=4 --robustFit=1 --justFit  -n SignalStrengthFitB_fullcomb_${Energy} comb_${Energy}.root |& tee combB_${Energy}.log

set status=`echo $?`
echo "Status: $status"



hostname
exit $status
