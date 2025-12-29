// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

// Solidity - Import Structs

// This is saved 'StructDeclaration.sol'

struct Todo {
    string text;
    bool completed;
}

import "./StructDeclaration.sol";

contract Todos {
    // An array of 'Todo' structs
    Todo[] public todos;
}