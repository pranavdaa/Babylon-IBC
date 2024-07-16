## Introduction
In this demo we will be working with the [Hermes IBC Relayer](https://hermes.informal.systems) in order to transfer fungible tokens ([ics-020](https://github.com/cosmos/ics/tree/master/spec/ics-020-fungible-token-transfer)) between Mars a custom chains and Babylon Chain

## Instructions
### Git clone this repo
git clone https://github.com/pranavdaa/Babylon-IBC
cd Babylon-IBC


### Build chains
cd chains/mars
ignite scaffold chain mars
cd mars
ignite chain serve

### Import keys

On another terminal run these commands to add keys to keyring

```
./chains/mars/setup_key.sh

babylond keys add babylon
```

Run the steps scripts

```
./relayer/step_1_hermes_setup.sh
```

On another terminal run these:

```
./relayer/step_2_hermes_check_balances.sh

./relayer/step_3_hermes_transfer_tokens.sh
```


