#!/bin/tcsh

# Read the arguments
echo "Starting catalogFiles.csh with arguments: $*"
set dataDir=$1
set book=$2
set dataset=$3
set outputDir=$4

set noStage=$5

# Prepare environment
echo " "
echo "Process dataset: $dataset  of book: $book"
echo "   in directory: $dataDir"
echo " "
set workDir=/home/paus/cms/ana/condor/reco
cd $workDir
set script=run.csh

# Stage the entire dataset to be processed
if ( "$noStage" == "" ) then
  echo " "
  echo "Staging files into castor in $dataDir/$book/$dataset"
  echo " "
  /home/mitprod/cms/jobs/bin/stageSample.py --dataDir=$dataDir/$book/$dataset
  sleep 4;
else
  echo " "
  echo "No pre-staging of the entire sample."
  echo " "
endif

# Looping through each single file and submitting the condor jobs
echo " "
echo "Submitting jobs to condor"
echo " "
set test="false"
foreach file (`rfdir $dataDir/$book/$dataset | grep edm | tr -s ' ' | cut -d' ' -f9`)

  set logFile=`echo $book/$dataset/$file | tr '/' '+'`
  set logFile=/tmp/$logFile

  rm -f $logFile
  #echo $file
  echo " ./$script $dataDir/$book/$dataset $file $outputDir"

  cat > submit.cmd <<EOF
Universe                = vanilla
Notify_user             = paus@mit.edu
Notification            = Error
Executable              = $script
Arguments               = $dataDir/$book/$dataset $file $outputDir
Rank                    = Mips
GetEnv                  = True
Initialdir              = $workDir
Input                   = /dev/null
Output                  = $workDir/res/$file.out
Error                   = $workDir/res/$file.err
Log                     = $logFile
should_transfer_files   = YES
when_to_transfer_output = ON_EXIT
Queue
EOF

  # cat submit.cmd
  condor_submit submit.cmd >& /dev/null;
  rm submit.cmd

end

exit 0
