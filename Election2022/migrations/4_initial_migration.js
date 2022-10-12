const Time = artifacts.require("Time");

module.exports = function (deployer) {
  deployer.deploy(Time);
};