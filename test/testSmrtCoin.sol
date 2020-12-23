//pragma
pragma solidity ^0.6.12;

import "truffle/Assert.sol";
import "truffle/DeployedAddress.sol";
import "../contracts/smrtCoin.sol";

contract testSmrtCoin{

    function testInitialBalanceOfOwner()public{
        smrtCoin coin = smrtCoin(DeployedAddress.smrtCoin());

        uint expectedBalance = 1000000;

        Assert.equal(meta.getBalance(tx.origin), expected, 'First account does not have a 1000000 coins');
    };

}