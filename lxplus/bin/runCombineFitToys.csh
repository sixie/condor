#!/bin/tcsh

hostname

echo "Arguments: $*"

echo $6


set jobLabel=$1
set workspaceFile=$2
set mass=$3
set physicsModelParameterExpression=$4
set physicsModelParameterRangeExpression=$5
set algo=$6
set fitOptions="$7"
set seed=$8
set outputDirectory=$9

echo " "; echo "Initialize CMSSW"; echo " "
#setenv KRB5CCNAME /home/sixie/.krb5/ticket
set workDir=`pwd`

setenv SCRAM_ARCH slc5_amd64_gcc462
cd    /afs/cern.ch/user/s/sixie/CMSSW_Combination/src/
eval `scramv1 runtime -csh`
cd -

cp /afs/cern.ch/user/s/sixie/work/public/combination/CombineToyWithWorkspace.C ./
cp /afs/cern.ch/user/s/sixie/CMSSW_Combination/src/HiggsProperties/Model_CVCF/rootlogon.C ./

#make output directory
mkdir -p $outputDirectory

pwd
# env

echo " "; echo "Show where we are"; echo " "
hostname
pwd
## env

klist

#setenv STAGE_SVCCLASS cmsprod


#generate one random toy
echo "Generating random toy with seed = " $seed
combine -M GenerateOnly $workspaceFile -m $mass -t 1 --expectSignal=1 -s $seed --saveToys -n${jobLabel}_Toy --setPhysicsModelParameters $physicsModelParameterExpression --setPhysicsModelParameterRanges $physicsModelParameterRangeExpression
echo "combine toy with workspace"
root -l -b -q CombineToyWithWorkspace.C+\(\"$workspaceFile\",\"higgsCombine${jobLabel}_Toy.GenerateOnly.mH125.${seed}.root\",\"toy_1\",\"higgsCombine${jobLabel}_Toy.mH${mass}.${seed}.root\"\)

#do model fit
echo "do model fit"
echo "combine -M MultiDimFit higgsCombine${jobLabel}_Toy.mH${mass}.${seed}.root  -m ${mass} -n ${jobLabel}.Toy.${seed}.${algo} -t 0 --expectSignal=1  --setPhysicsModelParameterRanges $physicsModelParameterRangeExpression -D model_s_optData --algo=${algo} --cl=0.68 -v1 --floatOtherPOIs 1 ${fitOptions}"

combine -v2 -M MultiDimFit higgsCombine${jobLabel}_Toy.mH${mass}.${seed}.root -m ${mass} -n ${jobLabel}.Toy.${seed}.${algo} -t 0 --expectSignal=1  --setPhysicsModelParameterRanges "$physicsModelParameterRangeExpression" -D model_s_optData --algo=${algo} --cl=0.68 --floatOtherPOIs 1 ${fitOptions} |& tee $outputDirectory/higgsCombine${jobLabel}.Toy.${seed}.${algo}.MultiDimFit.mH${mass}.log

echo "copy output to directory : " $outputDirectory
#copy output to proper directory
cp higgsCombine${jobLabel}.Toy.${seed}.${algo}.MultiDimFit.mH${mass}.root $outputDirectory


set status=`echo $?`
echo "Status: $status"

hostname

exit $status
