#!/bin/tcsh

# Read the arguments
echo "Starting catalogFiles.csh with arguments:  $*"
set chainFile=$1
set channel=$2
set events=$3
set version=1

# Prepare environment
echo " "
echo "chain file: " $chainFile
echo "channel   : " $channel
echo "events    : " $events
echo "version   : " $version
echo " "

set workDir=/home/sixie/condor
cd $workDir
set script=run.csh

echo " "
echo "Submitting jobs to condor"
echo " "

echo " ./$script $chainFile runAnalysis.C++\(fil,$channel,$events\)"

set logFile=/tmp/file_${channel}_${events}_${version}.log
rm -f submit.cmd

cat > submit.cmd <<EOF
Universe                = vanilla
Notify_user             = sixie@cern.ch
Notification            = Error
Executable              = $workDir/$script
Arguments               = $chainFile runAnalysis.C(fil,$channel,$events)
Rank                    = Mips
GetEnv                  = True
Initialdir              = $workDir
Input                   = /dev/null
Output                  = $workDir/test/file_${channel}_${events}_${version}.out
Error                   = $workDir/test/file_${channel}_${events}_${version}.err
Log                     = $logFile
should_transfer_files   = YES
when_to_transfer_output = ON_EXIT
Queue
EOF

cat submit.cmd
condor_submit submit.cmd #>& /dev/null;
rm submit.cmd

exit 0
