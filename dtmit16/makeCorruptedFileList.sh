grep "open attempt failed" res/AllNtuple/cern/filefi/025/f11-*/*.err | sort | uniq | sed 's/:Error in <TXNetFile::CreateXClient>: open attempt failed on /   /' | sed 's/ (Input\/output error)//' | sed 's/res\/AllNtuple\/local\/filefi\///' | sed 's/res\/AllNtuple\/local\/filefi\///' | sed 's/\/noskim_.*_/:/' | sed 's/\.err//'