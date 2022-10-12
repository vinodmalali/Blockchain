const ElectionCommision = artifacts.require("ElectionCommision");

module.exports = function (deployer) {
  deployer.deploy(ElectionCommision);
};