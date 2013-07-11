#!/bin/tcsh
#===================================================================================================
# Submit a set of jobs to run over a given dataset, splitting the jobs according to the filesets.
#
# Version 1.0                                                                      November 14, 2008
#===================================================================================================
if ( $?CMSSW_BASE != 0 ) then
  echo 'ERROR - CMSSW is already setup. This is not recommanded to start a condor job.'
  echo '        please, get a clean environment.'
  exit 1
endif

# Read the arguments
echo "Starting data processing with arguments: $*"
set runMacro=$1
set catalogDir=$2
set book=$3
set dataset=$4
set outputName=$5
set outputDir=$6
set runTypeIndex=$7
set noStage=$8



echo "runindex " $runTypeIndex


set jobId=`date +%j%m%d%k%M%S`

set dataDir=`tail -1  $catalogDir/$book/$dataset/Filesets | cut -d' ' -f2`

# Prepare environment
echo " "
echo "Process dataset: $dataset  of book: $book"
echo "     in catalog: $catalogDir"
echo " "
set workDir=/home/sixie/condor/
cd $workDir
set script=/home/sixie/condor/bin/run_allFilesets.csh

# # Make sure they do not get edited by mistake
# chmod u+w rootlogon.C runHiggsAnalysis.C
# Create the directory for the results
mkdir -p $workDir/res/$outputName/$book/$dataset

# Stage the entire dataset to be processed
if ( "$noStage" == "" ) then
  set var=`echo $dataDir | grep castor/cern.ch`
  if ( "$var" != "" ) then
    echo " "
    echo "Staging files into castor in $dataDir/$book/$dataset"
    echo " "
    /home/mitprod/cms/jobs/bin/stageSample.py --dataDir=$dataDir
  else
    echo " "
    echo "No Staging, files are local"
    echo " "
  endif
else
  echo " "
  echo "No pre-staging of the entire sample."
  echo " "
endif

# Looping through each single file and submitting the condor jobs
echo " "
echo "Submitting jobs to condor"
echo " "
echo " cat $catalogDir/$book/$dataset/Filesets | grep -v ^# | cut -d' ' -f1 "

#set fileset to be empty string to use all filesets together in one job
set fileset="''"

echo "done"
set logFile=`echo $book/${dataset} | tr '/' '+'`
set logFile=/tmp/$logFile
rm -f $logFile

echo " $script $catalogDir $book $dataset $fileset $outputDir"

cat > submit.cmd <<EOF
Universe                = vanilla
Notify_user             = sixie@mit.edu
Notification            = Error
Executable              = $script
Arguments               = $runMacro $catalogDir $book $dataset $fileset $outputName $outputDir $runTypeIndex
Rank                    = Mips
GetEnv                  = True
Initialdir              = $workDir
Input                   = /dev/null
Output                  = $workDir/res/$outputName/$book/$dataset/${runTypeIndex}.out
Error                   = $workDir/res/$outputName/$book/$dataset/${runTypeIndex}.err
Log                     = $logFile
should_transfer_files   = YES
when_to_transfer_output = ON_EXIT
Queue
EOF

# cat submit.cmd
condor_submit submit.cmd # >& /dev/null;
rm submit.cmd

exit 0
