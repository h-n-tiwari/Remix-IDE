//SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

// View

contract View {

    // uint256 Num1 = 2;
    // uint256 Num2 = 7;

    // line no. 43-48

    uint256 public Num1 = 2;
    uint256 public Num2 = 7;

    // -------------------------------------

    // Using view to check the State Variable

    // function getResults() public view returns(uint256, uint256) {
    //     return (Num1, Num2);
    // }

    // What if i want to calculate
    // function getResults() public view returns(uint256 product, uint256 total) {
        // uint256 num1 = 20;
        // uint256 num2 = 30;

        // product = num1 * num2;
        // total = num1 + num2;

        // Using line no. 9-10

        // uint256 Num1 = 2;
        // uint256 Num2 = 7;

        // product = Num1 * Num2;
        // total = Num1 + Num2;
    

    // -------------------------------------------------

    // function getResults() public returns(uint256 product, uint256 total) {
    //     // uint256 Num1 = 2;
    //     // uint256 Num2 = 7;

    //     // If i make it public in contract view 

    //     // uint256 public Num1 = 2;
    //     // uint256 public Num2 = 7;

    //     // uint256 num1 = 20;
    //     // uint256 num2 = 30;


    //     Num1 += 5;
    //     Num2 += 7;

    //     product = Num1 * Num2;
    //     total = Num1 + Num2;
    // }
    
    function getResults() public view returns(uint256, uint256) {
        // uint256 Num1 = 2;
        // uint256 Num2 = 7;

        // If i make it public in contract view 

        // uint256 public Num1 = 2;
        // uint256 public Num2 = 7;

        // uint256 num1 = 20;
        // uint256 num2 = 30;


        // Num1 += 5;
        // Num2 += 7;

        uint256 product = Num1 * Num2;            // if u want to define the datatype here just add uint256
        uint256 total = Num1 + Num2;

        return (product, total);
    }

}