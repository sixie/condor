#!/bin/tcsh
#===================================================================================================
# Submit a set of jobs to run over a given dataset, splitting the jobs according to the filesets.
#
# Version 1.0                                                                      November 14, 2008
#===================================================================================================



foreach MH(110 110.5 111 111.5 112 112.5 113 113.5 114 114.5 115 115.5 116 116.5 117 117.5 118 118.5 119 119.5 120 120.5 121 121.5 122 122.5 123 123.5 124 124.5 125 125.5 126 126.5 127 127.5 128 128.5 129 129.5 130 130.5 131 131.5 132 132.5 133 133.5 134 134.5 135 135.5 136 136.5 137 137.5 138 138.5 139 139.5 140 141 142 143 144 145)

  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/HiggsCombinationBestFitMu/HiggsCombinationBestFitMu_${MH}.out -J HiggsCombinationBestFitMu_${MH}_7Plus8TeV /afs/cern.ch/user/s/sixie/condor/bin/runHiggsCombinationBestFitMu.sh $MH 7Plus8TeV
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/HiggsCombinationBestFitMu/HiggsCombinationBestFitMu_${MH}.out -J HiggsCombinationBestFitMu_${MH}_7TeV /afs/cern.ch/user/s/sixie/condor/bin/runHiggsCombinationBestFitMu.sh $MH 7TeV
  bsub -q 1nd -o /afs/cern.ch/user/s/sixie/work/private/condor/res/HiggsCombinationBestFitMu/HiggsCombinationBestFitMu_${MH}.out -J HiggsCombinationBestFitMu_${MH}_8TeV /afs/cern.ch/user/s/sixie/condor/bin/runHiggsCombinationBestFitMu.sh $MH 8TeV

echo /afs/cern.ch/user/s/sixie/condor/bin/runHiggsCombinationBestFitMu.sh $MH 
echo JobName: HiggsCombinationBestFitMu_${MH}

end


exit 0
