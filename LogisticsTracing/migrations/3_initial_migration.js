const Seller = artifacts.require("Seller");

module.exports = function (deployer) {
  deployer.deploy(Seller,"0x777c95d7642d7d88dE19e5500F189ac734690f57");
};