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

# Stage the entire dataset to be processed
if ( "$noStage" == "" ) then
  set var=`echo $dataDir | grep castor/cern.ch`
  #if ( "$var" != "" ) then
    echo " "
    echo "Staging files into castor in $dataDir/$book/$dataset"
    echo " "
    /home/mitprod/bin/stageSample.py --dataDir=$dataDir
  #else
  #  echo " "
  #  echo "No Staging, files are local"
  #  echo " "
  #endif
else
  echo " "
  echo "No pre-staging of the entire sample."
  echo " "
endif

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

foreach file (`cat $fileset | cut -d' ' -f1  `)



    #to submit only particular  filesets:
 
#    if ( "$file" == "0001" ||"$file" == "0003" ) then

#    if ( "$file" == "0019" || "$file" == "0011" || "$file" == "0012" || "$file" == "0013"  || "$file" == "0014" || "$file" == "0016" || "$file" == "0019" || "$file" == "0021" || "$file" == "0024" || "$file" == "0025"  || "$file" == "0027" || "$file" == "0030" || "$file" == "0031"  || "$file" == "0033" || "$file" == "0035" || "$file" == "0038"   ) then
#    if ( "$file" != "0000" && "$file" != "0001" && "$file" != "0002" && "$file" != "0005" && "$file" != "0010" && "$file" != "0013" && "$file" != "0015" && "$file" != "0019"  ) then

#    if ( "$file" == "0008"  ) then

#r10b-mu
#   if (  "$file" == "0003" ||  "$file" == "0005" || "$file" == "0006" || "$file" == "0007" ||  "$file" == "0008" || "$file" == "0009" || "$file" == "0011" ||  "$file" == "0012" || "$file" == "0013" || "$file" == "0014" ||  "$file" == "0015" || "$file" == "0016" || "$file" == "0017" || "$file" == "0019" || "$file" == "0020" ||  "$file" == "0021" || "$file" == "0023" || "$file" == "0024" || "$file" == "0025" ) then


#r10b-el
#   if ( "$file" == "0001" || "$file" == "0002" || "$file" == "0005" || "$file" == "0007" || "$file" == "0010" || "$file" == "0011" || "$file" == "0012" ||  "$file" == "0018" || "$file" == "0020" || "$file" == "0024" || "$file" == "0026" || "$file" == "0027" || "$file" == "0028" || "$file" == "0031" || "$file" == "0032" ||  "$file" == "0033" || "$file" == "0034" || "$file" == "0035" || "$file" == "0037" || "$file" == "0039" || "$file" == "0040" ) then

  set logFile=`echo $book/$dataset/$file | tr '/' '+'`
  set logFile=/tmp/$logFile
  rm -f $logFile
  echo " $script $catalogDir $book $dataset $skim $file $outputDir "
  echo ""

cat > submit.cmd <<EOF
Universe                = vanilla
Notify_user             = sixie@mit.edu
Notification            = Error
Executable              = $script
Arguments               = $runMacro $catalogDir $book $dataset $skim $file $outputName $outputDir $runTypeIndex
Rank                    = Mips
Requirements            = (Arch == "X86_64" ) && (OpSys == "LINUX") && (Disk >= DiskUsage) && ((Memory * 1024) >= ImageSize) && (HasFileTransfer) && (MACHINE != "dtmit18.cern.ch") 
GetEnv                  = True
Initialdir              = $workDir
Input                   = /dev/null
Output                  = $workDir/res/$outputName/$book/$dataset/${skim}_${runTypeIndex}_${file}.out
Error                   = $workDir/res/$outputName/$book/$dataset/${skim}_${runTypeIndex}_${file}.err
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

echo $script $runMacro $catalogDir $book $dataset $skim $file $outputName $outputDir $runTypeIndex

    #to submit only particular  filesets:
#      endif

end


exit 0
