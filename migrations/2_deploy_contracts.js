require('dotenv').config()

const ERC20 = artifacts.require('examples/SimpleToken.sol')

module.exports = deployer => {
  return deployer.deploy(ERC20, "Test Mintable Burnable Token", "TMBT", 9, 1000, 2000)
  .then((_instance) => {
    console.log("contract address: ", _instance.address)
  })
}
