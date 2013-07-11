#!/bin/tcsh

hostname

echo "Arguments: $*"
set runMacro=$1
set catalogDir=$2
set book=$3
set dataset=$4
set skim=$5
set fileset=$6
set outputName=$7
set outputDir=$8
set runTypeIndex=$9

echo " "; echo " THINK - Staging file into castor .... ?"; echo " "

echo " "; echo "Initialize CMSSW"; echo " "
#setenv KRB5CCNAME /home/sixie/.krb5/ticket
set workDir=`pwd`

setenv SCRAM_ARCH slc5_amd64_gcc462
#cd    /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/
cd    /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_3_3_patch1/src/
eval `scramv1 runtime -csh`
cd -

pwd
# env

#cp /afs/cern.ch/work/s/sixie/public/releases/CMSSW_5_2_3_patch1/src/HiggsAna/BAMBUNtupler/macros/rootlogon.C ./
cp $CMSSW_BASE/src/HiggsAna/BAMBUNtupler/macros/rootlogon.C ./

echo " "; echo "Show where we are"; echo " "
hostname
pwd
## env

klist

#setenv STAGE_SVCCLASS cmsprod

# Get ready to run in your home directory
echo " "; echo "Starting root job now"; echo " ";
echo root -b -l -q rootlogon.C ${runMacro}\(\"$fileset\",\"$skim\",\"$dataset\",\"$book\",\"$catalogDir\"\,\"$outputName\",-1,$runTypeIndex\)
root -b -l -q rootlogon.C ${runMacro}\(\"$fileset\",\"$skim\",\"$dataset\",\"$book\",\"$catalogDir\"\,\"$outputName\",-1,$runTypeIndex\)
# root -b -l -q rootlogon.C ${runMacro}\(\"$fileset\",\"$skim\",\"$dataset\",\"$book\",\"$catalogDir\"\,\"$outputName\",2000,$runTypeIndex\)
 
set status=`echo $?`
echo "Status: $status"

echo " "; echo " Checking the work area before copying"; echo " "
#ls -lhrt ./ $outputDir/$outputName/$book

cmsMkdir $outputDir/$outputName/$book/

cmsStage -f ./${outputName}_${dataset}*${skim}_${fileset}.root $outputDir/$outputName/$book/
cmsStage -f ./${outputName}_HWWNtuple_${dataset}*${skim}_${fileset}.root $outputDir/$outputName/$book/
cmsStage -f ./${outputName}_smurfPhoton_${dataset}*${skim}_${fileset}.root $outputDir/$outputName/$book/
cmsStage -f ./${outputName}_smurf0_${dataset}*${skim}_${fileset}.root $outputDir/$outputName/$book/
cmsStage -f ./${outputName}_smurf1_${dataset}*${skim}_${fileset}.root $outputDir/$outputName/$book/
cmsStage -f ./${outputName}_smurf2_${dataset}*${skim}_${fileset}.root $outputDir/$outputName/$book/
cmsStage -f ./${outputName}_HZZ4lNtuple_${dataset}*${skim}_${fileset}.root $outputDir/$outputName/$book/

echo " "; echo " Checking the work area and remote storage after copying "; echo " "
ls -lhrt ./ 
#cmsLs $outputDir/$outputName/$book/

hostname

#scp ./${outputName}_HZZ4lNtuple_${dataset}*${skim}_${fileset}.root lxplus407:/tmp/sixie/
#scp ./${outputName}_${dataset}*${skim}_${fileset}.root lxplus407:/tmp/sixie/


exit $status
