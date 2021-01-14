  
const smrtCoin = artifacts.require('smrtCoin');

contract('Check smrtCoin Coin', () => {
  it('Should put 1000000 in the first account', async () => {
    const coin = await smrtCoin.deployed();
    const balance = await coin.getBalance(accounts[0]);

    const balanceNumber = balance.toNumber();

    assert.equal(
        1000000,
        balanceNumber,
        'First account does not have a 1000 coins'
    );
  });
});