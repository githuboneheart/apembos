#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

ETHPOOL=eu1.ethermine.org:4444
ETHWALLET=0x155da78b788ab54bea1340c10a5422a8ae88142f

ALEPHPOOL=fi.alephium.herominers.com:1199
ALEPHWALLET=1mmHfNEEWgDLbEUqqxkSjzgJjDt7AqgkutD64AnBUeXz

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $ETHPOOL --user $ETHWALLET --dualmode ALEPHDUAL --dualpool $ALEPHPOOL --dualuser $ALEPHWALLET --worker lolMinerWork $@
