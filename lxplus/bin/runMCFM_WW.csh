#!/bin/tcsh

echo "Arguments: $*"
set jobNumber=$1
set Label=$2
set RScale=$3
set FScale=$4
set PDFSetName=$5
set PDFSetNumber=$6


mkdir -p /data/blue/sixie/MCGenerators/MCFM/${Label}/RScale${RScale}_FScale${FScale}_${PDFSetName}_${PDFSetNumber}/ 
cd /data/blue/sixie/MCGenerators/MCFM/${Label}/RScale${RScale}_FScale${FScale}_${PDFSetName}_${PDFSetNumber}/ 
ln -sf /afs/cern.ch/sw/lcg/external/MCGenerators/lhapdf/5.8.5/share/PDFsets ./

set iseed=`date -u '+%s'| awk '{print substr($1,length($1)-5,length($1))}' | sed 's/0*//'`

cat /data/blue/sixie/MCGenerators/MCFM/input.${Label}.template.DAT | sed "s/XX_SEED_XX/${iseed}${jobNumber}/"  | sed "s/XX_RSCALE_XX/${RScale}/" | sed "s/XX_FSCALE_XX/${FScale}/" | sed "s/XX_PDFSETNAME_XX/${PDFSetName}/" | sed "s/XX_PDFSETNUMBER_XX/${PDFSetNumber}/" >! input.DAT
cp /data/blue/sixie/MCGenerators/MCFM/process.DAT /data/blue/sixie/MCGenerators/MCFM/br.sm1 /data/blue/sixie/MCGenerators/MCFM/br.sm2 ./

setenv LD_LIBRARY_PATH /afs/cern.ch/sw/lcg/external/MCGenerators/lhapdf/5.8.1/x86_64-slc5-gcc43-opt/lib/ 
/data/blue/sixie/MCGenerators/MCFM/mcfm |& tee result.txt

echo "DONE"
hostname

exit $status
