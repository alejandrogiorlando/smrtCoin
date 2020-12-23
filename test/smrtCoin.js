const smrtCoin = artifacts.require('smrtCoin');

contract ('Check smrtCoin', () => {
    it ('Should put 1000000 in the first account', async() => {
        
        const coin = await smrtCoin.deployed();
        const balance = await coin.getBalance(accounts[0]);

        const balanceNumber = balance.toNomber();

        Assert.equal(
            1000000,
            balanceNumber,
            'First account does not have a 1000000 coins'
        );
    });
});