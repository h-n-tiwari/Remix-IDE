//SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract DataTypes{

    // bool public hey;          // Bydefault boolean value is false
    // bool public num = true;

    // UINT Stands for unsignedd integer, meaning non negative integers different size are av

    // uint8 myUint8; // ranges 0 - 2 ** 8 - 1 (255)
    
    // uint16 myUint16;   // ranges 0 - 2 ** 16 - 1 (65535)

    // uint32 myUint32;   // ranges 0 - 2 ** 32 - 1 (4294967295)


    // uint256 myUint256; // ranges 0 - 2 ** 256 - 1 (1.1579209e+77)



    // uint public u8 = 1;
    // uint public u256 = 456;
    // uint public u = 123;         // Whether u define uint256 or not if you write only uint it'll take unit256 
                                 // unit is an alias from uint256


    // NEGATIVE Number
    // Negative number are allowed from int Types, Like uint, different ranges are availabe from int8

    // int256 ranges from -2 ** 255 to 2 ** 255 -1 = 5.7896045e+76, -5.7896045e+76
    // int126 ranges from -2 ** 128 to 2 ** 128 -1 = 3.4028237e+38, -3.4028237e+38


    // int8 public i8 = -1;
    // int public i256 = 456;
    // int public i = -1234;

    // Now u can add min. and max. int

    // int public minInt = type(int).min;
    // int public maxInt = type(int).max;

    // ARRAY

    // In solidity, the data types byte represent a sequence of bytes, so generally there are two types of bytes

    //--- fixed-sized bytes arrays
    //--- dynamically-sized bytes arrays
    // So when u define byte, in smart contract it's represent dynamic bytes array
    
    // bytes1 public a;
    // bytes1 public b;

    // I'm going to assign predefined value

    // Instead of String we going to use byte in our future smart contracts
    // Computer can understand binary

    // bytes1 public a = 0xb5;  //[10110101]
    // bytes1 public b = 0x57;  //[01010110]


    //ADDRESS Types

    // address public hey;
    // address public addr = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;


    // DEFAULTS Values
    
    // Bcoz in solidity there is no null or undefined like JS

    bool public defaultBool;  // false;
    uint public number;     // 0
    int public defaultInt;    // 0
    address public hey;       // 0x0000000

}