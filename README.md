# StorageFactory Smart Contracts

A collection of Solidity smart contracts demonstrating inheritance, factory patterns, and basic storage functionality on the Ethereum blockchain.

## 📋 Overview

This project contains three main smart contracts:

1. **SimpleStorage**: A basic storage contract that can store numbers and person details
2. **StorageFactory**: A factory contract that can create and manage multiple SimpleStorage contracts
3. **AddFiveStorage**: An extended version of SimpleStorage that adds 5 to any number before storing

## 🔧 Smart Contracts

### SimpleStorage.sol
- Stores a favorite number
- Maintains a list of people with their favorite numbers
- Features a mapping of names to favorite numbers
- Functions:
  - `store(uint256)`: Store a favorite number
  - `retrieve()`: Get the stored favorite number
  - `addPerson(string, uint256)`: Add a person with their name and favorite number

### StorageFactory.sol
- Creates and manages multiple SimpleStorage contracts
- Functions:
  - `CreateSimpleStorageContract()`: Deploy a new SimpleStorage contract
  - `sfStore(uint256, uint256)`: Store a number in a specific SimpleStorage contract
  - `sfGet(uint256)`: Retrieve a number from a specific SimpleStorage contract

### AddFiveStorage.sol
- Inherits from SimpleStorage
- Overrides the store function to add 5 to any number before storing
- Demonstrates contract inheritance and function overriding

## 🚀 Getting Started

### Prerequisites
- Solidity ^0.8.18
- An Ethereum development environment (Hardhat, Truffle, or Remix)
- An Ethereum wallet (MetaMask recommended)

### Deployment
1. Deploy the StorageFactory contract
2. Use StorageFactory to create new SimpleStorage contracts
3. Interact with the created contracts through StorageFactory

## 📝 Usage Examples

```solidity
// Create a new SimpleStorage contract
storageFactory.CreateSimpleStorageContract()

// Store the number 42 in the first SimpleStorage contract
storageFactory.sfStore(0, 42)

// Retrieve the number from the first SimpleStorage contract
uint256 myNumber = storageFactory.sfGet(0)
```

## 🔒 Security

- All contracts use Solidity version 0.8.18 or higher to prevent overflow/underflow
- Functions are properly scoped with visibility modifiers
- Simple and straightforward implementation reduces attack vectors

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ✨ Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
