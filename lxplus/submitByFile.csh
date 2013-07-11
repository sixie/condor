#!/bin/tcsh
#===================================================================================================
# Submit a set of jobs to run over a given dataset, splitting the jobs according to the filesets.
#
# Version 1.0                                                                      November 14, 2008
#===================================================================================================

# Read the arguments
echo "Starting data processing with arguments: $*"
set runMacro=$1
set dataDir=$2
set outputName=$3
set outputDir=$4
set runTypeIndex=$5

echo "runindex " $runTypeIndex


set jobId=`date +%j%m%d%k%M%S`

set fileDir="dcap://cmsgridftp.fnal.gov:24125/pnfs/fnal.gov/usr/cms/WAX/resilient/sxie/${dataDir}"

# Prepare environment
echo " "
echo "Process dataDir: $dataDir"
echo " "
set workDir=/uscms/home/sxie/condor/
cd $workDir
set script=/uscms/home/sxie/condor/bin/run.csh

# # Make sure they do not get edited by mistake
# chmod u+w rootlogon.C runHiggsAnalysis.C
# Create the directory for the results
mkdir -p $workDir/res/$outputName/


# Looping through each single file and submitting the condor jobs
echo " "
echo "Submitting jobs to condor"
echo " "

@ i = 1
foreach file( `ls /uscms/home/sxie/resilient/${dataDir}/` )

#if ($i == 14 || $i == 24 || $i == 9 || $i == 29) then
if (0 == 0) then

  set logFile=/tmp/${file}
  rm -f $logFile
  echo " $script $file $outputDir "
  echo ""

cat > submit.cmd <<EOF
Universe                = vanilla
Notify_user             = fakeuser@fnal.gov
Executable              = $script
Arguments               = $runMacro ${fileDir}/$file $i $outputName $outputDir $runTypeIndex 
Requirements = Memory >= 199 &&OpSys == "LINUX"&& (Arch != "DUMMY" )&& Disk > 1000000
Initialdir              = $workDir 
Output                  = $workDir/res/$outputName/${runTypeIndex}_${file}.out                                                                                            
Error                   = $workDir/res/$outputName/${runTypeIndex}_${file}.err  
Log                     = $workDir/res/$outputName/${runTypeIndex}_${file}.log
should_transfer_files   = YES
when_to_transfer_output = ON_EXIT
Queue
EOF

  # cat submit.cmd
  condor_submit submit.cmd # >& /dev/null;
  rm submit.cmd

echo $script $runMacro ${fileDir}/$file $i $outputName $outputDir $runTypeIndex

endif
@ i = $i + 1

end


exit 0
