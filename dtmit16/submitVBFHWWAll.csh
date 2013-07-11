#!/bin/tcsh


./submit.csh /server/02a/sixie/CMSSW_2_1_10/src/MitPhysics/macros/SelMods/runVBFHWWSelection.C /home/mitprod/catalog/mit filler/004 mitPrivateH165WW_2l-id9 VBFHWWSelection /server/02a/sixie/hist -1

root -l MitPhysics/macros/SelMods/runVBFHWWSelection.C\(\"0000\",\"mitPrivateH165WW_2l-id9\",\"filler/004\",\"/home/mitprod/catalog/mit\",\"VBFHWWSelection\",-1,-1\)

root -l MitPhysics/macros/SelMods/runVBFHWWSelection.C\(\"0000\",\"mitPrivateTTbar_dilepton-id9\",\"filler/004\",\"/home/mitprod/catalog/mit\",\"VBFHWWSelection\",-1,-1\)














#VBF Jet Tag Study

root -l MitPhysics/macros/SelMods/runFwdJetStudy.C\(\"0000\",\"mitPrivateH165WW_2l-id9\",\"filler/004\",\"/home/mitprod/catalog/mit\",\"FwdJetStudy\",-1,-1\)

root -l MitPhysics/macros/SelMods/runFwdJetStudy.C\(\"0000\",\"mitPrivateTTbar_dilepton-id9\",\"filler/004\",\"/home/mitprod/catalog/mit\",\"FwdJetStudy\",-1,-1\)

root -l MitPhysics/macros/SelMods/runFwdJetStudy.C\(\"0000\",\"mitPrivateWW_2l-id9\",\"filler/004\",\"/home/mitprod/catalog/mit\",\"FwdJetStudy\",-1,-1\)

root -l MitPhysics/macros/SelMods/runFwdJetStudy.C\(\"0000\",\"mitPrivateWZ_3l-id9\",\"filler/004\",\"/home/mitprod/catalog/mit\",\"FwdJetStudy\",-1,-1\)

root -l MitPhysics/macros/SelMods/runFwdJetStudy.C\(\"0000\",\"mitPrivateZZ_4l-id9\",\"filler/004\",\"/home/mitprod/catalog/mit\",\"FwdJetStudy\",-1,-1\)

root -l MitPhysics/macros/SelMods/runFwdJetStudy.C\(\"\",\"s8-ttbar-id9\",\"filler/004\",\"/home/mitprod/catalog/mit\",\"FwdJetStudy\",-1,-1\)
