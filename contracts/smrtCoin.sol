//pragma
pragma solidity ^0.6.12;

//imports


//clase --> contracts
/*
    - Contrato para alamacenar los blances de smrtCoin
 */

 contract smrtCoin {

    //variables
    mapping (address => uint) balances;

    //constructor
    constructor() public{
        balances[msg.sender] = 1000;
    }


    //Metodos
    function send(address receiver, uint amount) public {
        require (balances[msg.sender] > amount);
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
    }

    function getBalance(address adr) public view returns(uint){
        return balances[adr];
    }
 }

 //01:09 aprox