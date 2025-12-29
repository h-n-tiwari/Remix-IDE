//SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;


// Local Variables

contract LocalVariables{

    uint256 public myNumber;

    // Function for Local variables

    // function local() public pure returns(uint256){
    //     // Variables define inside the function scope
    //     // Not store on the blockchain

    //     uint256 i = 345;
    //     return i;

    // }
    
    // function local() public returns(uint256){
    //     // Variables define inside the function scope
    //     // Not store on the blockchain

    //     uint256 i = 345;
    //     myNumber = i;
    //     return myNumber;

    // }

    function local() public returns(address, uint256, uint256){
        // Variables define inside the function scope
        // Not store on the blockchain

        uint256 i = 345;
        myNumber = i;

        i += 45;
        address myAddress = address(1);


        return ( myAddress, myNumber, i);

    }
}