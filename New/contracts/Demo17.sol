//SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

// Solidity Revert Handler

contract RevertStatement {

    function checkOverFlow(uint256 _num1, uint256 _num2) public view returns (bool, string memory, uint256) {
        uint256 sum = _num1 + _num2;

        if (sum < 0 || sum > 255) {
            revert ("Overflow Exist");
        } else {
            return(true,"No Overflow", sum);           // yt - return ("No Overflow", sum); 
        }
    }
}