const MultiSigWallet = artifacts.require("MultiSigWallet");

module.exports = function (deployer) {
  const owners = ["0x0D6A3441f7729796CDE98ce3682B6B24e54955B7", "0x9b0938356028045c4f794565a19bfc5c6FDcb8C7", "0x5A5D29c208ef2d174DCC1E02aC2EE6bf12ac61f5"];
  const approvalcount = 1;
  deployer.deploy(MultiSigWallet,owners,approvalcount);
};