const add = artifacts.require("add");

module.exports = function (deployer) {
  deployer.deploy(add);
};