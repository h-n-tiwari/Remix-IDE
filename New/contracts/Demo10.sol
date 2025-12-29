//SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

// Constants

contract Constants {

    // When we are not defining Constant
    //  // 70262                              // In output -> Execution cost

    // address public myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // --------------------------------------------------------------------------

    // Defining Constant

    // 45697                                  // Execution cost is different while using Constant
    address public constant MY_ADDR = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
    //----------------------------------------------------------------------------------

    // Constant in Function

    // 58309
   
    function getConstant() public view returns(address) {
        return MY_ADDR;
    }

}