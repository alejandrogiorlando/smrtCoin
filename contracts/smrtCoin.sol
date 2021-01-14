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
    constructor() public{
        balances[msg.sender] = 1000000;
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