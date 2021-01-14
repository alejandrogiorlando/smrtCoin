//pragma
pragma solidity ^0.6.12;

//imports


//clase --> contracts
/*
    - Contrato para alamacenar los blances de smrtCoin
 */

 contract smrtCoin {

    //variables
    mapping (address => uint256) balances;

    //constructor
    constructor(uint initial_value) public{
        balances[msg.sender] = initial_value;
    }


    //Metodos
    function send(address receiver, uint256 amount) public {
        require(balances[msg.sender] > amount);
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
    }

    function getBalance(address adr) public view returns(uint256){
        return balances[adr];
    }
 }
// 1:23:29 --> 1:42:18