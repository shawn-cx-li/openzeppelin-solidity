require('dotenv').config()

const contract = artifacts.require('examples/SimpleToken.sol')

module.exports = deployer => {
  return deployer.deploy(contract, "Leo Dollar", "LOD", 18, 1000000000, 4000000000)
  .then((_instance) => {
    console.log("contract address: ", _instance.address)
  })
}
