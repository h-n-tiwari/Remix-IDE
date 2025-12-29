// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

// Solidity - Visibility

// Visibility - Functions and state variables have to declare whether they r accessible by other contracts.

// Funcitons can be declared as

// Public - Any contract and account can call
// Private - Only inside the contract that defines the function
// Internal - Only inside contract that inherits an internal function
// External - Only other contracts and accounts can call

contract Base {
    // Private function can only be called
    // - inside this contract 
    // Contracts that inherits this contract can't call this function.

    function privateFunc() private pure returns (string memory) {
        return "private function called";
    }

    function testPrivateFunc() public pure returns (string memory) {
        return privateFunc();
    }

    // Internal function can be called
    // - inside this contract
    // - inside contracts that inherit this contract

    function internalFunc() internal pure returns (string memory) {
        return "internal fucntion called";
    }

    function testInternalFunc() public pure virtual returns (string memory) {
        return internalFunc();
    }

    // Public function can be called
    // - inside this contract
    // - inside contracts that inherit this contract
    // - by other contracts and accounts

    function publicFunc() public pure virtual returns (string memory) {
        return "public function called";
    }

    // External function can only be called
    // - by other contracts and accounts

    function externalFunc() external pure returns (string memory) {
        return "external function called";
    }

    // This function will not compile since we're trying to call
    // an external function here.
    // function testExternalFunc() public pure returns (string memory0 {
    //         return externalFunc();

    // State Variables

    string private privateVar = "my private variable";
    string internal internalVar = "my internal variable";
    string public publicVar = "my ppublic variable";

    // State variables can't be external so this code won't compile.
    // String external externalVar = "my external variable";
    
}

contract Child is Base {
    // Inherited contracts don't have access to private function
    // and State Variables.
    // function testPrivateFunc() public pure returns (string memory) {
    //     return privateFunc();
    // }

    // Internal function call he called inside child contracts.

    function testInternalFunc() public pure override returns (string memory) {
        return internalFunc();
    }
    
}