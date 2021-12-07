rm -rf ~/geth-git/test-chain-dir

geth --datadir ~/geth-git/test-chain-dir account import priv1
geth --datadir ~/geth-git/test-chain-dir account import priv2
geth --datadir ~/geth-git/test-chain-dir init genesis.json

geth --datadir ~/geth-git/test-chain-dir console --http.api="db,eth,net,web3,personal,web3" --allow-insecure-unlock --http --miner.gaslimit '20000000' --unlock 0x0766fd8a11485bb8c045919ac5a07c51b3d1696b --mine --txpool.globalslots '100000000' --txpool.globalqueue '100000000' --txpool.accountqueue '100000000'
