#!/bin/tcsh
echo "Arguments: $*"

echo " "; echo "Initialize CMSSW"; echo " "
pwd
set pwd=`pwd`

cd /server/02a/sixie/test/CMSSW_2_1_11/src
eval `scramv1 runtime -csh`;
cd /home/sixie/condor/ ;


set logFile=/tmp/mylog_$$.log

echo " "; echo "Starting root now"; echo " "
echo "root -l -b -q .rootlogon.C $*";
root -l -b -q rootlogon.C $*;

exit 0
