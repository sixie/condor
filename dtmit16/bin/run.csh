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
setenv KRB5CCNAME /home/sixie/.krb5/ticket
set workDir=`pwd`

setenv SCRAM_ARCH slc5_amd64_gcc434
#cd    /home/sixie/CMSSW_analysis/src/
cd    /data/blue/sixie/releases/analysis/CMSSW_4_4_2/src

#setenv SCRAM_ARCH slc5_ia32_gcc434
#cd /build/sixie/releases/CMSSW_3_11_1/src/

#cd     /home/sixie/CMSSW_localAnalysis/src/
#cd     /build/sixie/releases/CMSSW_3_9_7/src/
#cd     /home/sixie/CMSSW_current/src/
#cd     /home/sixie/CMSSW_genStudy/src/
#cd     /home/sixie/CMSSW_data/src/

eval `scramv1 runtime -csh`
#cd /home/sixie/condor/
pwd
## env

#cd /tmp/
#cp $CMSSW_BASE/src/MitStyle.h ./
#cp $CMSSW_BASE/src/MitStyle.C ./

echo " "; echo "Show where we are"; echo " "
hostname
pwd
## env

klist

#setenv STAGE_SVCCLASS cmsprod

# Get ready to run in your home directory
echo " "; echo "Starting root job now"; echo " ";
echo root -b -l -q $CMSSW_BASE/src/rootlogon.C ${runMacro}\(\"$fileset\",\"$skim\",\"$dataset\",\"$book\",\"$catalogDir\"\,\"$outputName\",-1,$runTypeIndex\)
root -b -l -q $CMSSW_BASE/src/rootlogon.C ${runMacro}\(\"$fileset\",\"$skim\",\"$dataset\",\"$book\",\"$catalogDir\"\,\"$outputName\",-1,$runTypeIndex\)
 
set status=`echo $?`
echo "Status: $status"

echo " "; echo " Checking the work area before copying"; echo " "
#ls -lhrt ./ $outputDir/$outputName/$book

mkdir -p $outputDir/$outputName/$book/
mv /data/blue/sixie/temp/${outputName}_${dataset}*${skim}_${fileset}.root $outputDir/$outputName/$book/
mv /data/blue/sixie/temp/${outputName}_HWWNtuple_${dataset}*${skim}_${fileset}.root $outputDir/$outputName/$book/
mv /data/blue/sixie/temp/${outputName}_smurfPhoton_${dataset}*${skim}_${fileset}.root $outputDir/$outputName/$book/
mv /data/blue/sixie/temp/${outputName}_smurf0_${dataset}*${skim}_${fileset}.root $outputDir/$outputName/$book/
mv /data/blue/sixie/temp/${outputName}_smurf1_${dataset}*${skim}_${fileset}.root $outputDir/$outputName/$book/
mv /data/blue/sixie/temp/${outputName}_smurf2_${dataset}*${skim}_${fileset}.root $outputDir/$outputName/$book/

#rm MitStyle.h MitStyle.C 
echo " "; echo " Checking the work area and remote storage after copying "; echo " "
#ls -lhrt ./ $outputDir/$outputName/$book

hostname
exit $status
