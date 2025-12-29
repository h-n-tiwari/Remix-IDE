//SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

// Solidity Do-While-Loop

contract DoWhile {

    // Syntax

    // do {
    //     block of statement to be executed
    // } while (condition)

    // --------------------------------------------------------------------

    uint256[] data;
    uint8 j = 0;

    function loop () public returns(uint256[] memory) {
        do {
            j++;
            data.push(j);
        } while (j < 5);
        return data;
    }
}