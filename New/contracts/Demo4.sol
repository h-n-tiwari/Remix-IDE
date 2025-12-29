//SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract Statebariables{

    // Few think to keep in mind about
    // State Variables

    // string public myState;
    // uint256 public myNum;


    // string public defaultText = "Hey Default Text";
    // uint256 public defaultNum = 5;


    // Byte define

    // bytes public defaultBytes = "hey james";
    // bytes public defaultBytesNo;
  
    // Array define

    // uint256[] myNumber;       // if u don't use public then its output comes 0 ETH
    // uint256[] public myNumber;


    // string public myState;
    // uint256 public myNum;

    // constructor( string memory _text, uint _no) {
    //     myState = _text;
    //     myNum = _no;
    // }

    string public myState;
    uint256 public myNum;

    function update( string memory _text, uint _no) public{
        myState = _text;
        myNum = _no;
    }
}