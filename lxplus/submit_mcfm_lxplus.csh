#!/bin/tcsh
#===================================================================================================
# Submit a set of jobs to run over a given dataset, splitting the jobs according to the filesets.
#
# Version 1.0                                                                      November 14, 2008
#===================================================================================================

# Read the arguments
echo "Starting data processing with arguments: $*"
set jobNumber=$1
set JetBin=$2
set HiggsMass=$3
set RScale=$4
set FScale=$5
set PDFSetName=$6
set PDFSetNumber=$7
set resultDir=$8

set jobId=`date +%j%m%d%k%M%S`

# Prepare environment
echo " "
set workDir=/home/sixie/condor/
cd $workDir
set script=/home/sixie/condor/bin/runMCFM.csh

# # Make sure they do not get edited by mistake
# chmod u+w rootlogon.C runHiggsAnalysis.C
# Create the directory for the results
set label=${JetBin}_HiggsMass${HiggsMass}_RScale${RScale}_FScale${FScale}_${PDFSetName}_${PDFSetNumber}
mkdir -p $workDir/res/mcfm/$label/


# Looping through each single file and submitting the condor jobs
echo " "
echo "Submitting jobs to condor"
echo " "


set logFile=/tmp/Log_mcfm_${label}.log
echo log $logFile 

echo "#! /bin/bash

"$script" " $jobNumber" "$JetBin" "$HiggsMass" "$RScale" "$FScale" "$PDFSetName" "$PDFSetNumber" 

" >  submit.cmd


echo "submit"

chmod +x submit.cmd
bsub -q 8nh -o dummy.txt < submit.cmd
rm submit.cmd
echo $script $jobNumber $JetBin $HiggsMass $RScale $FScale $PDFSetName $PDFSetNumber 


exit 0

