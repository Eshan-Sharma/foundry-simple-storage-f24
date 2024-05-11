I promise to never use my private key associated with real money in plain text.

// Wallet to secure private key instead of having dotenv file

```
cast wallet import defaultkey --interactive
```

Give the private key and password

Save the sender address for the `defaultkey` in dotenv and run

```
forge script script/DeploySimpleStorage.s.sol -- broadcast  --rpc-url $RPC_URL --account defaultkey --sender $SENDER_ADDRESS  -vvvv
```
