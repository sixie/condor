#!/bin/tcsh

hostname

echo "Arguments: $*"
set macroLocation=$1
set macro=$2
set parameters=$3
set outputfile=$4
set outputCopyToEOSDirectory=$5

echo " "; echo " THINK - Staging file into castor .... ?"; echo " "

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
#root -b -l -q rootlogon.C ${macro}${parameters}

echo $outputCopyToEOSDirectory
echo $outputfile $outputCopyToEOSDirectory

cmsMkdir $outputCopyToEOSDirectory
cmsStage $outputfile $outputCopyToEOSDirectory

set status=`echo $?`
echo "Status: $status"

hostname

exit $status
