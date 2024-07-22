#!/bin/sh

trap 'read -p "run: $BASH_COMMAND"' DEBUG

#----------------------------------------------------
# HERMES - QUERY BALANCES
#----------------------------------------------------

# Query Balances

echo "Query balance - tellurian (babylon)"
babylond query bank balances bbn19vj5r77z79pcwl9fglkfcmawkucnj6yam9x6y9 --node https://rpc-euphrates.devnet.babylonchain.io

# This is not needed for this demo.
# echo "Query balance - greenman (mars)"
# marsd --node tcp://localhost:26559 query bank balances $(marsd --home $HOME/.mars keys show greenman -a)

