#!/bin/sh

trap 'read -p "run: $BASH_COMMAND"' DEBUG

#----------------------------------------------------
# HERMES - TRANSFER TOKENS
#----------------------------------------------------

# Fungible token transfer 
echo "Transfer tokens from Babylon to Mars"
hermes -c ./relayer/config.toml tx raw ft-transfer mars babylon transfer channel-0 100 --timeout-height-offset 10 --denom ecoin -n 1

