#!/bin/tcsh

echo "Arguments: $*"
set runMacro=$1
set catalogDir=$2
set book=$3
set dataset=$4
set fileset=$5
set outputName=$6
set outputDir=$7
set runTypeIndex=$8

echo " "; echo " THINK - Staging file into castor .... ?"; echo " "

echo " "; echo "Initialize CMSSW"; echo " "
set workDir=`pwd`
cd     /home/sixie/CMSSW_2_1_11/src/
eval `scramv1 runtime -csh`
cd /home/sixie/condor/
pwd
## env

echo " "; echo "Show where we are"; echo " "
pwd
## env

# Get ready to run in your home directory
echo " "; echo "Starting root job now"; echo " ";
echo root -b -l -q ./rootlogon.C ${runMacro}\(\"\",\"$dataset\",\"$book\",\"$catalogDir\"\,\"$outputName\",-1,$runTypeIndex\)
root -b -l -q ./rootlogon.C ${runMacro}\(\"\",\"$dataset\",\"$book\",\"$catalogDir\"\,\"$outputName\",-1,$runTypeIndex\)

set status=`echo $?`
echo "Status: $status"

echo " "; echo " Checking the work area before copying"; echo " "
ls -lhrt ./ $outputDir/$outputName/$book

mkdir -p                      $outputDir/$outputName/$book/
mv ${outputName}_${dataset}.root $outputDir/$outputName/$book/

echo " "; echo " Checking the work area and remote storage after copying "; echo " "
ls -lhrt ./ $outputDir/$outputName/$book

exit $status
