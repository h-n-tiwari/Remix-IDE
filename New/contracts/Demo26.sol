// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

// Solidity - Import Enum

contract enums {
    enum size{SMALL, MEDIUM, LARGE}   // don't write string. u can write in small letters
    size public choice = size.MEDIUM;

    function setSmall() public {
        choice = size.SMALL;
    }


    function setMedium() public {
        choice = size.MEDIUM;
    }


    function setLarge() public {
        choice = size.LARGE;
    }

}