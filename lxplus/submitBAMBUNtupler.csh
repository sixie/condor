#!/bin/tcsh
#===================================================================================================
# Submit a set of jobs to run over a given dataset, splitting the jobs according to the filesets.
#
# Version 1.0                                                                      November 14, 2008
#===================================================================================================

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
set workDir=/afs/cern.ch/user/s/sixie/condor/
cd $workDir
set script=/afs/cern.ch/user/s/sixie/condor/bin/runBAMBUNtupler.csh

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
    #/home/mitprod/bin/stageSample.py --dataDir=$dataDir
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
 
#    if ( "$file" == "0000"  ) then

  set logFile=`echo $book/$dataset/$file | tr '/' '+'`
  set logFile=/tmp/$logFile
  rm -f $logFile
  echo " $script $catalogDir $book $dataset $skim $file $outputDir "
  echo ""

  bsub -q 1nd -o $workDir/res/$outputName/$book/$dataset/${skim}_${runTypeIndex}_${file}.out -J ${outputName}_${book}_${dataset}_${file} $script $runMacro $catalogDir $book $dataset $skim $file $outputName $outputDir $runTypeIndex

#&& (MACHINE != "svmit01.cern.ch") && (MACHINE != "dtmit03.cern.ch")

echo $script $runMacro $catalogDir $book $dataset $skim $file $outputName $outputDir $runTypeIndex
echo JobName: ${outputName}_${book}_${dataset}_${file}
    #to submit only particular  filesets:
#      endif

end


exit 0
