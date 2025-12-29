//SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

// Solidity Assert

contract AssertStatement{

    // Simple function

    bool public result;              // if u don't addd public then in output if return _num1 = 45 & _num2 = 78 it won't return anything so add public then u'll be able to see

    function checkOverFlow(uint256 _num1, uint256 _num2) public {
        uint256 sum = _num1 + _num2;
        assert(sum <= 255);
        result = true;
    }

    // Create one more function

    function getResult() public view returns (string memory) {
        if(result == true) {
            return "No Overflow";
        } else {
            return "Overflow exist";
        }

    }
}