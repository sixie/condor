#!/bin/tcsh

echo "set up scram"
source /uscmst1/prod/sw/cms/cshrc prod

echo "Arguments: $*"
set runMacro=$1
set file=$2
set jobNumber=$3
set outputName=$4
set outputDir=$5
set runTypeIndex=$6

echo " "; echo " THINK - Staging file into castor .... ?"; echo " "

echo " "; echo "Initialize CMSSW"; echo " "
set workDir=`pwd`
#cd     /uscms/home/sxie/CMSSW_genStudy/src/
cd     /uscms/home/sxie/CMSSW_analysis/src/

eval `scramv1 runtime -csh`
pwd
## env

echo " "; echo "Show where we are"; echo " "
hostname
pwd
## env

# Get ready to run in your home directory
echo " "; echo "Starting root job now"; echo " ";
echo root -b -l -q ./rootlogon.C ${runMacro}\(\"$file\",\"${outputName}_${jobNumber}\",-1,$runTypeIndex\)
root -b -l -q ./rootlogon.C ${runMacro}\(\"$file\",\"${outputName}_${jobNumber}\",-1,$runTypeIndex\)
 
set status=`echo $?`
echo "Status: $status"

echo " "; echo " Checking the work area before copying"; echo " "
mkdir -p $outputDir/$outputName/
ls -lhrt ./ $outputDir/$outputName/
mv ${outputName}_${jobNumber}.root $outputDir/$outputName/

echo " "; echo " Checking the work area and remote storage after copying "; echo " "
ls -lhrt ./ $outputDir/$outputName/

exit $status
