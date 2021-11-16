rm -rf ~/geth-git/test-chain-dir

geth --datadir ~/geth-git/test-chain-dir account import priv1
geth --datadir ~/geth-git/test-chain-dir account import priv2
geth --datadir ~/geth-git/test-chain-dir init genesis.json

geth --datadir ~/geth-git/test-chain-dir console --http.api="db,eth,net,web3,personal,web3" --allow-insecure-unlock --http
