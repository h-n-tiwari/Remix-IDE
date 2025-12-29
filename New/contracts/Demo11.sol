//SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

// If,Else

contract IfElse{

    uint256 public myNum = 5;
    string public myString;

    // LongHand Method

    // Two Parameter

    // function get(uint256 _num) public returns (string memory) {
    //     if (_num == 5)  {
    //         myString = "Hey the value of myNum is 5";
    //     } else {
    //         myString = "Not 5";
    //     }
    // }

    // Three Parameter

    // function get(uint256 _num) public returns (string memory) {
    //     if (_num == 5)  {
    //         myString = "Hey the value of myNum is 5";
    //     } else if (_num == 4) {
    //         myString = "Not 5";
    //     } else {
    //         myString = "Hey James";
    //     }
    // }

    // ShortHand Method

    function shortHand (uint256 _num) public returns (string memory) {
       return _num == 5 ? myString = "James" : myString = "No buddy";
    }
}