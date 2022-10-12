const Election2022 = artifacts.require("Election2022");

module.exports = function (deployer) {
  deployer.deploy(Election2022,"0x482e374265B83E34C5cF4cb6286B66D4A5877fbc");
};