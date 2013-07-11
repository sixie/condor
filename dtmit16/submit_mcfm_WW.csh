#!/bin/tcsh
#===================================================================================================
# Submit a set of jobs to run over a given dataset, splitting the jobs according to the filesets.
#
# Version 1.0                                                                      November 14, 2008
#===================================================================================================

# Read the arguments
echo "Starting data processing with arguments: $*"
set jobNumber=$1
set Label=$2
set RScale=$3
set FScale=$4
set PDFSetName=$5
set PDFSetNumber=$6


set jobId=`date +%j%m%d%k%M%S`

# Prepare environment
echo " "
set workDir=/home/sixie/condor/
cd $workDir
set script=/home/sixie/condor/bin/runMCFM_WW.csh

# # Make sure they do not get edited by mistake
# chmod u+w rootlogon.C runHiggsAnalysis.C
# Create the directory for the results
set label=${Label}_RScale${RScale}_FScale${FScale}_${PDFSetName}_${PDFSetNumber}
mkdir -p $workDir/res/mcfm/$label/


# Looping through each single file and submitting the condor jobs
echo " "
echo "Submitting jobs to condor"
echo " "


set logFile=/tmp/Log_mcfm_${label}.log
echo log $logFile 

cat >! submit.cmd <<EOF
Universe                = vanilla
Notify_user             = sixie@mit.edu
Notification            = Error
Executable              = $script
Arguments               = $jobNumber $Label $RScale $FScale $PDFSetName $PDFSetNumber
Rank                    = Mips
Requirements            = (Arch == "X86_64") && (OpSys == "LINUX") && (Disk >= DiskUsage) && ((Memory * 1024) >= ImageSize) && (HasFileTransfer) && (MACHINE != "svfnal02.cern.ch")
GetEnv                  = True
Initialdir              = $workDir
Input                   = /dev/null
Output                  = $workDir/res/mcfm/$label/job.out
Error                   = $workDir/res/mcfm/$label/job.err
Log                     = ${logFile}
should_transfer_files   = YES
when_to_transfer_output = ON_EXIT
Queue
EOF

echo "submit"


condor_submit submit.cmd # >& /dev/null;
rm submit.cmd
echo $script $jobNumber $Label $RScale $FScale $PDFSetName $PDFSetNumber 


exit 0

