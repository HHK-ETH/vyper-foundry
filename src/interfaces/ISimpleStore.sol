// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

interface ISimpleStore {
    function get() external view returns (uint256);
    function store(uint256 val) external;
}
