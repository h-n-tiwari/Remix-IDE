// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

// Solidity - DelegateCall

// Note: Deploy this contract first

contract B {
    // Note: storage layout must be the same as contract A

    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) public payable {
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }

}

contract A {
    uint public num;
    address public sender;
    uint public value;

    function setVars(address _contract, uint _num) public payable {
        // A's storage is set , B is not modified.

        (bool success, ) = _contract.delegatecall(             // bytes memory data i remove becoz that was causing warning error.
            abi.encodeWithSignature("setVars(uint256)", _num)
        );

       // -----------------------------------------------------

       // require i add becoz warning showing
       
        // Use the returned values
        require(success, "Delegatecall failed");
        // Optionally, U can do something with the data
    }

}