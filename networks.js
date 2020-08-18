const HDWalletProvider = require("@truffle/hdwallet-provider");
const privateKey = "<PRIVATE_KEY>"
const privateKeyProvider = new HDWalletProvider(privateKey, "http://<NODE_URL>:4545");

module.exports = {
  networks: {
    development: {
      provider: privateKeyProvider,
      network_id: "648531",
      gasPrice: 0,
      gas:3000000
    },
    lacchain: {
      provider: privateKeyProvider,
      network_id: "648529",
      gasPrice: 0,
      gasLimit: 4000000
    }
  },
};
