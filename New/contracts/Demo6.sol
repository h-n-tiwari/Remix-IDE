//SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;


// Global Variables

contract GlobalVariables{

    address public owner;
     address public Myblockhash;
    uint256 public difficulty;
    uint256 public gasLimit;
    uint256 public number;
    uint256 public timestamp;
    uint256 public value;
    uint256 public nowOn;
    address public origin;
    uint256 public gasprice;
    bytes public callData;
    bytes4 public Firstfour;

    constructor(){
        owner = msg.sender;
        //0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
        //0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
        

        Myblockhash = block.coinbase;
        difficulty = block.difficulty;
        gasLimit = block.gaslimit;
        number = block.number;
        timestamp = block.timestamp;
        origin = tx.origin;
        gasprice = tx.gasprice;
        callData = msg.data;
        Firstfour = msg.sig;
        // value = msg.value;
        // nowOn = now;

    }
}

