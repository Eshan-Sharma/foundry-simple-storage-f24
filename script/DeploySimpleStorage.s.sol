// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "../src/SimpleStorage.sol";
import {Script} from "../lib/forge-std/src/Script.sol";

contract DeploySimpleStorage is Script {
    // If we don't specify --broadcast, forge will spin up a new temp chain and make the transaction
    //forge script script/DeploySimpleStorage.s.sol --broadcast --rpc-url http://127.0.0.1:8545 --private-key
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
