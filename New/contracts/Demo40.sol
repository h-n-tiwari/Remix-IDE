// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

// Solidity - Call Function

// contract Receiver {
//     event Received(address caller, uint amount, string message);

//     fallback() external payable {
//         emit Received(msg.sender, msg.value, "Fallback was called");

//     }

//     function foo(string memory _message, uint _x) public payable returns (uint) {
//         emit Received(msg.sender, msg.value, _message);

//         return _x + 1;
//     }

// }

// contract Caller {
//     event Response(bool success, bytes data);

//     // Let's imagine that contract Caller doesn't have the source code for the
//     // contract Receiver, but we do know the address of contract Receiver and the to call.

//     function testCallFoo(address payable _addr) public payable {
//         // U can send ether and specify a custom gas amount

//        (bool success, bytes memory data) = _addr.call{value: msg.value, gas: 5000}(
//             abi.encodeWithSignature("foo(string,uint256)", "call foo", 123)
//         );
        
//         emit Response(success, data);
//     }

//    // Calling a function that doesn't exist triggers the fallback function.
//    function testCallDoesNotExist(address _addr) public {
//     (bool success, bytes memory data) = _addr.call(
//         abi.encodeWithSignature("doesNotExist()")
//     );

//     emit Response(success, data);
//    }

// }


// contract Receiver {
//     event Received(address caller, uint amount, string message);

//     // Add a receive function
//     receive() external payable {
//         emit Received(msg.sender, msg.value, "Receive was called");
//     }

//     fallback() external payable {
//         emit Received(msg.sender, msg.value, "Fallback was called");
//     }

//     function foo(string memory _message, uint _x) public payable returns (uint) {
//         emit Received(msg.sender, msg.value, _message);

//         return _x + 1;
//     }
// }

// contract Caller {
//     event Response(bool success, bytes data);

//     function testCallFoo(address payable _addr) public payable {
//         (bool success, bytes memory data) = _addr.call{value: msg.value, gas: 5000}(
//             abi.encodeWithSignature("foo(string,uint256)", "call foo", 123)
//         );

//         emit Response(success, data);
//     }

//     function testCallDoesNotExist(address _addr) public {
//         (bool success, bytes memory data) = _addr.call(
//             abi.encodeWithSignature("doesNotExist()")
//         );

//         emit Response(success, data);
//     }
// }


contract Receiver {
    event Received(address caller, uint amount, string message);

    receive() external payable {
        emit Received(msg.sender, msg.value, "Receive was called");
    }

    fallback() external payable {
        emit Received(msg.sender, msg.value, "Fallback was called");
    }

    function foo(string memory _message, uint _x) public payable returns (uint) {
        emit Received(msg.sender, msg.value, _message);

        return _x + 1;
    }
}

contract Caller {
    event Response(bool success, bytes data);

    function testCallFoo(address payable _addr) public payable {
        (bool success, bytes memory data) = _addr.call{value: msg.value, gas: 5000}(
            abi.encodeWithSignature("foo(string,uint256)", "call foo", 123)
        );

        emit Response(success, data);
    }

    function testCallDoesNotExist(address payable _addr) public payable {
        (bool success, bytes memory data) = _addr.call{value: msg.value}(
            abi.encodeWithSignature("doesNotExist()")
        );

        emit Response(success, data);
    }
}