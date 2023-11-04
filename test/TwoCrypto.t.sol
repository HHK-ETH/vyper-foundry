// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import {Test, console2} from "forge-std/Test.sol";
import "./../src/VyperDeployer.sol";
import "./../src/interfaces/ISimpleStore.sol";

contract CounterTest is Test {
    VyperDeployer vyperDeployer;

    ISimpleStore simpleStore;

    function setUp() public {
        vyperDeployer = new VyperDeployer();

        simpleStore = ISimpleStore(vyperDeployer.deployContract("SimpleStore"));
    }

    function test_Set() public {
        assertEq(address(simpleStore) != address(0), true);

        simpleStore.store(50);
        assertEq(simpleStore.get(), 50);
    }
}
