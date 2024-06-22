# Deploying a smart contract on Ganache


![image](https://github.com/DCVglobalnetwork/DeployOnGanache/assets/105791829/f82a7531-b0a0-48f8-980b-58114e260667)


![image](https://github.com/DCVglobalnetwork/DeployOnGanache/assets/105791829/9ff5a53b-79d2-4892-9990-c3680a24ff23)

# SimpleStorage Smart Contract

This is a simple smart contract written in Solidity for storing and retrieving an unsigned integer value. The contract allows users to set and get the value of the stored data.

## Prerequisites

To interact with this smart contract, you'll need the following installed:


Node.js and npm

Truffle

Ganache

MetaMask

## Installation

1. Clone the repository:

```
git clone https://github.com/DCVglobalnetwork/DeployOnGanache.git
cd SimpleStorage
```

2. Install Truffle globally (if not already installed):
   
```
npm install -g truffle
```

3. Install dependencies (if there are any, for example if you add OpenZeppelin):

```
npm install
```

## Configuration
Ensure your truffle-config.js file is configured to connect to Ganache. Here's an example configuration:

```
module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*", // Match any network id
    },
  },
  compilers: {
    solc: {
      version: "0.5.16", // Solidity version
    },
  },
};
```

## Usage

Start Ganache:

If you're using the GUI, open the Ganache application.
If you're using the CLI, run:

```
ganache-cli
```

Compile the smart contract:

```
truffle compile
```

Deploy the smart contract:

```
truffle migrate --network development
```

# Smart Contract Overview

SimpleStorage.sol

```
// SPDX-License-Identifier: MIT
pragma solidity 0.5.16;

contract SimpleStorage {
    uint256 private data;

    function set(uint256 _data) public {
        data = _data;
    }

    function get() public view returns (uint256) {
        return data;
    }
}
```

1. State Variable: uint256 private data;

 -  Stores an unsigned integer value.

2. Function set(uint256 _data):

  - Sets the value of data to _data.
  - Visibility: public.

3. Function get():

  - Returns the value of data.
  - Visibility: public view.
  - Returns: uint256.

## License
This project is licensed under the MIT License 


