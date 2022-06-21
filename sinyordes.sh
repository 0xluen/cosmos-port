#!/bin/bash
echo -e ''
curl -s https://api.testnet.run/logo.sh | bash && sleep 3
echo -e ''
GREEN="\e[32m"
NC="\e[0m"
BINARY=$(uname -m)

#!/bin/bash

sleep 2

# set vars
if [ ! $NODENAME ]; then
	read -p "Node ismi yaziniz: " NODENAME
	echo 'export NODENAME='$NODENAME >> $HOME/.bash_profile


echo '================================================='
echo 'Node isminiz: ' $NODENAME
echo 'Cüzdan isminiz: ' $WALLET
echo 'Chain ismi: ' $CHAIN_ID
echo '================================================='
sleep 2

echo -e "\e[1m\e[32m1. Paketler güncelleniyor... \e[0m" && sleep 1


sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:36358\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:36357\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6351\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:36356\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":36350\"%" $HOME/.kyve/config/config.toml

sed -i.bak -e "s%^address = \"0.0.0.0:9090\"%address = \"0.0.0.0:9350\"%; s%^address = \"0.0.0.0:9091\"%address = \"0.0.0.0:9351\"%" $HOME/.kyve/config/app.toml

sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhost:36357\"%" $HOME/.kyve/config/client.toml
