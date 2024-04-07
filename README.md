# CryptoPoops Smart Contract

CryptoPoops is a smart contract built on the 0x05 platform that implements NonFungibleToken functionality.

## Overview

The CryptoPoops contract includes the following features:
- Definition of a non-fungible token (NFT) structure
- Events for contract initialization, withdrawal, and deposit
- Implementation of NFT collection management
- Minter functionality for creating NFTs and minters

## Contract Structure

The contract consists of the following main components:

### NonFungibleToken (NFT)

- `id`: Unique identifier for the NFT
- `name`: Name of the NFT
- `favouriteFood`: Favourite food associated with the NFT
- `luckyNumber`: Lucky number associated with the NFT

### IPublicNFT Interface

- `borrowAuthNFT`: Function to borrow an authenticated NFT

### Collection

- Implementation of a collection for managing NFTs
- Functions for depositing, withdrawing, and borrowing NFTs
- Storage for owned NFTs

### Minter

- Functionality for creating NFTs and minters

## Usage

To interact with the CryptoPoops contract, you can perform the following actions:

- Create a new empty collection: `createEmptyCollection()`
- Create a new NFT: `createNFT(name, favouriteFood, luckyNumber)`
- Create a new minter: `createMinter()`

## Initialization

Upon contract initialization, the total supply is set to 0, and the `ContractInitialized` event is emitted. Additionally, a minter instance is created and saved to storage.

## Storage

The contract utilizes storage to maintain the state of owned NFTs and minters.

## Events

- `ContractInitialized`: Emitted upon contract initialization
- `Withdraw`: Emitted when an NFT is withdrawn from a collection
- `Deposit`: Emitted when an NFT is deposited into a collection

