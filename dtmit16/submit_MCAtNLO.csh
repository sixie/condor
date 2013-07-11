#!/bin/tcsh
#===================================================================================================
# Submit a set of jobs to run over a given dataset, splitting the jobs according to the filesets.
#
# Version 1.0                                                                      November 14, 2008
#===================================================================================================

# Read the arguments
echo "Starting data processing with arguments: $*"
set nJobs=$1
set neventsPerJob=$2
set label=$3
set HiggsMass=$4
set HiggsWidth=$5

set jobId=`date +%j%m%d%k%M%S`

# Prepare environment
echo " "
set workDir=/home/sixie/condor/
cd $workDir
set script=/home/sixie/condor/bin/runMCAtNLO.csh

# # Make sure they do not get edited by mistake
# chmod u+w rootlogon.C runHiggsAnalysis.C
# Create the directory for the results
mkdir -p $workDir/res/MCAtNLO/$label/





# Looping through each single file and submitting the condor jobs
echo " "
echo "Submitting jobs to condor"
echo " "

@ i = 1
while ($i <= $nJobs) 
    echo $i

    set logFile=/tmp/Log_MCAtNLO_${label}_${i}

cat > submit.cmd <<EOF
Universe                = vanilla
Notify_user             = sixie@mit.edu
Notification            = Error
Executable              = $script
Arguments               = $neventsPerJob $i $label $HiggsMass $HiggsWidth
Rank                    = Mips
Requirements            = (Arch == "INTEL") && (OpSys == "LINUX") && (Disk >= DiskUsage) && ((Memory * 1024) >= ImageSize) && (HasFileTransfer) 
GetEnv                  = True
Initialdir              = $workDir
Input                   = /dev/null
Output                  = $workDir/res/MCAtNLO/$label/job_${i}.out
Error                   = $workDir/res/MCAtNLO/$label/job_${i}.err
Log                     = $logFile
should_transfer_files   = YES
when_to_transfer_output = ON_EXIT
Queue
EOF

    condor_submit submit.cmd # >& /dev/null;
    rm submit.cmd
    echo $script $neventsPerJob $i $label $HiggsMass $HiggsWidth

    @ i++
end

exit 0

