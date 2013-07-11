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
set skim=$5
set outputName=$6
set outputDir=$7
set runTypeIndex=$8
set noStage=$9



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
set script=/home/sixie/condor/bin/run.csh

# # Make sure they do not get edited by mistake
# chmod u+w rootlogon.C runHiggsAnalysis.C
# Create the directory for the results
mkdir -p $workDir/res/$outputName/$book/$dataset/


# Looping through each single file and submitting the condor jobs
echo " "
echo "Submitting jobs to condor"
echo " "
echo " cat $catalogDir/$book/$dataset/$skim/Filesets | grep -v ^# | cut -d' ' -f1 "

echo "hello"

if ($skim == "noskim") then
    set fileset = $catalogDir/$book/$dataset/Filesets
else
    set fileset = $catalogDir/$book/$dataset/$skim/Filesets
endif



  set logFile=`echo $book/$dataset/$file | tr '/' '+'`
  set logFile=/tmp/$logFile
  rm -f $logFile
  echo " $script $catalogDir $book $dataset $skim 0000 $outputDir "
  echo ""

cat > submit.cmd <<EOF
Universe                = vanilla
Notify_user             = sixie@mit.edu
Notification            = Error
Executable              = $script
Arguments               = $runMacro $catalogDir $book $dataset $skim 0000 $outputName $outputDir $runTypeIndex
Rank                    = Mips
Requirements            = (Arch == "INTEL") && (OpSys == "LINUX") && (Disk >= DiskUsage) && ((Memory * 1024) >= ImageSize) && (HasFileTransfer) 
GetEnv                  = True
Initialdir              = $workDir
Input                   = /dev/null
Output                  = $workDir/res/$outputName/$book/$dataset/${skim}_${runTypeIndex}.out
Error                   = $workDir/res/$outputName/$book/$dataset/${skim}_${runTypeIndex}.err
job_lease_duration      = 3600
+AccountingGroup        = "research.sixie"
Log                     = $logFile
should_transfer_files   = YES
when_to_transfer_output = ON_EXIT
Queue
EOF

  # cat submit.cmd
  condor_submit submit.cmd # >& /dev/null;
  rm submit.cmd

#&& (MACHINE != "svmit01.cern.ch") && (MACHINE != "dtmit03.cern.ch")

echo $script $runMacro $catalogDir $book $dataset $skim 0000 $outputName $outputDir $runTypeIndex

    #to submit only particular  filesets:
#      endif



exit 0
