#!/bin/tcsh

#command line testing

#root -l ./rootlogon.C /server/02a/sixie/CMSSW_2_1_11/src/runBambu2txt.C\(\"0000\",\"s8-ttbar-mg-id9\",\"filler/006\",\"/home/mitprod/catalog/mit\",\"Summer08\",1000,-1\)

#root -l ./rootlogon.C /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C\(\"0000\",\"s8-ttbar-mg-id9\",\"filler/006\",\"/home/mitprod/catalog/mit\",\"Summer08\",1000,-1\)
#root -l ./rootlogon.C /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C\(\"0000\",\"s8-wjets-mg-id9\",\"filler/006\",\"/home/mitprod/catalog/mit\",\"Summer08\",1000,2\)
#root -l ./rootlogon.C /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C\(\"0000\",\"s8-zjets-mg-id9\",\"filler/006\",\"/home/mitprod/catalog/mit\",\"Summer08\",10,3\)


#006 datasets.

# ./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-ttbar-mg-id9 Summer08 /server/02a/sixie/hist -1 

# ./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-ttbar-id9 Summer08 /server/02a/sixie/hist -1 

# ./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-wjets-mg-id9 Summer08 /server/02a/sixie/hist -1

# ./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-we-id9 Summer08 /server/02a/sixie/hist -1

# ./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-wm-id9 Summer08 /server/02a/sixie/hist -1

# ./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-wtau-id9 Summer08 /server/02a/sixie/hist -1

# ./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-zjets-mg-id9 Summer08 /server/02a/sixie/hist -1

# ./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-zee-id9 Summer08 /server/02a/sixie/hist -1

# ./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-zmm-id9 Summer08 /server/02a/sixie/hist -1

# ./submit.csh /home/sixie/CMSSW_2_1_11/src/MitHiggs/macros/runMacros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-ztautau-id9 Summer08 /server/02a/sixie/hist -1





#006 datasets.  using new release

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-ttbar-mg-id9 Summer08 /server/02a/sixie/hist -1 

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-ttbar-id9 Summer08 /server/02a/sixie/hist -1 

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-wjets-mg-id9 Summer08 /server/02a/sixie/hist 2

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-we-id9 Summer08 /server/02a/sixie/hist 2

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-wm-id9 Summer08 /server/02a/sixie/hist 2

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-wtau-id9 Summer08 /server/02a/sixie/hist 2

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-zjets-mg-id9 Summer08 /server/02a/sixie/hist 3

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-zee-id9 Summer08 /server/02a/sixie/hist 3

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-zmm-id9 Summer08 /server/02a/sixie/hist 3

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-ztautau-id9 Summer08 /server/02a/sixie/hist 3

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-gjet_15_20-id9 Summer08 /server/02a/sixie/hist -1

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-gjet_20_25-id9 Summer08 /server/02a/sixie/hist -1

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-gjet_25_30-id9 Summer08 /server/02a/sixie/hist -1

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-gjet_30_35-id9 Summer08 /server/02a/sixie/hist -1

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-gjet_35-id9 Summer08 /server/02a/sixie/hist -1

./submit.csh /build/sixie/releases/newtest/CMSSW_2_1_11/src/MitPhysics/macros/runBambuToText.C /home/mitprod/catalog/mit filler/006 s8-vqq-mg-id9 Summer08 /server/02a/sixie/hist -1
