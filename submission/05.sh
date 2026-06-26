# Check the total amount in the wallet.
ADDRESS=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress)

echo "$ADDRESS"

bitcoin-cli -regtest generatetoaddress 101 "$ADDRESS" > /dev/null

bitcoin-cli -regtest -rpcwallet=builderswallet getbalance
