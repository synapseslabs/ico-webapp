var SynapsesLabsToken = artifacts.require("./SynapsesLabsToken.sol");

module.exports = function(deployer) {
  deployer.deploy(SynapsesLabsToken, 'Synapses', 'SYN', 18, 1000000000);
};
