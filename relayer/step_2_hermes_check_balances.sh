#!/bin/sh

trap 'read -p "run: $BASH_COMMAND"' DEBUG

#----------------------------------------------------
# HERMES - QUERY BALANCES
#----------------------------------------------------

# Query Balances

echo "Query balance - tellurian (babylon)"
babylond query bank balances babylon147v63r83u06lpgh24medk8xf7c7v24jcf70k5q --node https://rpc-euphrates.devnet.babylonchain.io

echo "Query balance - greenman (mars)"
marsd --node tcp://localhost:26559 query bank balances $(marsd --home $HOME/.mars keys show greenman -a)

# Show Denom Trace
echo "Show denom trace"
marsd query ibc-transfer denom-traces --home ~/.mars --node http://localhost:26559

