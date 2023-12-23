## DegenStore - DegenTokens

### Overview 

DegenStore is a smart contract designed to operate on the Avalanche blockchain. It facilitates the creation and management of a unique token system within the gaming ecosystem. Players earn these tokens through in-game achievements, enabling them to access exclusive rewards and engage in trading activities. The use of the Avalanche blockchain ensures fast and cost-effective transactions, enhancing the overall gaming experience. This smart contract aligns with Degen Gaming's vision to elevate player loyalty and revolutionize in-game economies.


### Project Features

- Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.

- Transferring tokens: Players should be able to transfer their tokens to others.

- Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.

- Checking token balance: Players should be able to check their token balance at any time.

- Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.


## Getting Started

Follow these steps to get the project up and running on your local machine.

**Prerequisites**

    - Node.js and npm installed on your machine.

- Clone the repository using the command - git clone https://github.com/username/projectname.git
- Change directory into your project file - cd projectname
- Install all dependencies with - npm install
- Compile the contract using Hardhat - npx hardhat compile 
- Run deployment script- npx hardhat run scripts/deploy.js —-network fuji 
- Verify the contract on snowtrace - npx hardhat verify --network fuji contract address
- Interact with the deployed contract through transactions like transfers, minting, and burning.

## Author

- Khemmie-Ray


## License

This project is licensed under the [Khemmie-Ray] License - see the LICENSE.md file for details.