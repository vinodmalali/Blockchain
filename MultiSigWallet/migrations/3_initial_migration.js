const TestContract = artifacts.require("TestContract");

module.exports = async function (deployer) {
  deployer.deploy(TestContract);
};