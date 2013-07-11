#make script that stages some dataset from castor.
setenv mainDir $1
rm -f stageCommand.sh
rfdir $mainDir | awk 'BEGIN{printf ("#\!/bin/bash \n stager_get \\\n");}{ if(NR%40==0) printf("\n sleep 1 \n stager_get \\\n"); printf("-M %s/%s \\\n",ENVIRON["mainDir"],$9)}END{print " "}' >  stageCommand.sh
rfdir $mainDir | awk 'BEGIN{printf ("#\!/bin/bash \n stager_qry \\\n");}{ if(NR%40==0) printf("\n sleep 1 \n stager_qry \\\n"); printf("-M %s/%s \\\n",ENVIRON["mainDir"],$9)}END{print " "}' >> stageCommand.sh
source stageCommand.sh
rm -f stageCommand.sh

