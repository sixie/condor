#!/bin/tcsh

hostname

echo "Arguments: $*"
set jobLabel=$1
set workspaceFile=$2
set mass=$3
set physicsModelParameterExpression=$4
set fitmethod=$5
set fitOptions=$6


set parameters=$3
set outputfile=$4
set outputDirectory=$5

echo " "; echo "Initialize CMSSW"; echo " "
#setenv KRB5CCNAME /home/sixie/.krb5/ticket
set workDir=`pwd`

setenv SCRAM_ARCH slc5_amd64_gcc462
cd    /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/
eval `scramv1 runtime -csh`
cd -

pwd
# env

cp /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/BAMBUNtupler/macros/rootlogon.C ./
cp ${macroLocation}/${macro} ./

echo " "; echo "Show where we are"; echo " "
hostname
pwd
## env

klist

#setenv STAGE_SVCCLASS cmsprod

# Get ready to run in your home directory
echo " "; echo "Starting root job now"; echo " ";
echo root -b -l -q rootlogon.C ${macro}${parameters}
root -b -l -q rootlogon.C ${macro}${parameters}

echo $outputfile 
echo $outputDirectory

mkdir -p $outputDirectory
cp $outputfile $outputDirectory


set status=`echo $?`
echo "Status: $status"

hostname

exit $status
