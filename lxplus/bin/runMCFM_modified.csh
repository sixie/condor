#!/bin/tcsh

echo "Arguments: $*"
set jobNumber=$1
set JetBin=$2
set HiggsMass=$3
set RScale=$4
set FScale=$5
set PDFSetName=$6
set PDFSetNumber=$7
set resultDir=$8

mkdir -p ${resultDir}/${JetBin}/HiggsMass$HiggsMass/RScale${RScale}_FScale${FScale}_${PDFSetName}_${PDFSetNumber}/ 
cd ${resultDir}/${JetBin}/HiggsMass${HiggsMass}/RScale${RScale}_FScale${FScale}_${PDFSetName}_${PDFSetNumber}/
ln -sf /afs/cern.ch/sw/lcg/external/MCGenerators/lhapdf/5.8.5/share/PDFsets ./

set iseed=`date -u '+%s'| awk '{print substr($1,length($1)-5,length($1))}' | sed 's/0*//'`

cat ${workdir}/input.${JetBin}.template.DAT | sed "s/XX_SEED_XX/${iseed}${jobNumber}/" | sed "s/XX_HIGGSMASS_XX/${HiggsMass}/" | sed "s/XX_RSCALE_XX/${RScale}/" | sed "s/XX_FSCALE_XX/${FScale}/" | sed "s/XX_PDFSETNAME_XX/${PDFSetName}/" | sed "s/XX_PDFSETNUMBER_XX/${PDFSetNumber}/" >! input.DAT
cp ${workdir}/process.DAT ${workdir}/br.sm1 ${workdir}/br.sm2 ./

setenv LD_LIBRARY_PATH /afs/cern.ch/sw/lcg/external/MCGenerators/lhapdf/5.8.1/x86_64-slc5-gcc43-opt/lib/ 
$workdir/mcfm |& tee ${resultDir}/${JetBin}/HiggsMass${HiggsMass}/RScale${RScale}_FScale${FScale}_${PDFSetName}_${PDFSetNumber}/result.txt

echo "DONE"
hostname

exit $status
