# DegenToken

DegenToken is a Solidity smart contract that implements a custom ERC20 token called "Degen" with the symbol "DGN". It extends the functionalities of the OpenZeppelin ERC20 and Ownable contracts.

## License

This project is licensed under the MIT License. For more information, please see the [LICENSE](LICENSE) file.

## Prerequisites

- Solidity version: ^0.8.18
- OpenZeppelin Contracts Library: @openzeppelin/contracts/token/ERC20/ERC20.sol
- OpenZeppelin Access Control Library: @openzeppelin/contracts/access/Ownable.sol

## Functionality

### Data Structures

The contract includes a `StoreProduct` struct that represents an item in a store. Each `StoreProduct` has a name and a token value.

### Storage

The `items` public array stores instances of `StoreProduct`, representing the available items in the store.

### Contract Functions

#### `constructor()`

The constructor function sets the name and symbol of the ERC20 token ("Degen" and "DGN" respectively).

#### `addItem(string memory _name, uint256 _token)`

This function allows the contract owner to add new items to the store. It takes the name and token value of the item as parameters and appends a new `StoreProduct` instance to the `items` array.

#### `mint(address to, uint256 amount)`

This function allows the contract owner to mint new tokens and assign them to a specified address. It takes the recipient's address and the amount of tokens to mint as parameters.

#### `getBalance() external view returns (uint256)`

This external function allows an address to retrieve its token balance. It returns the balance of the calling address.

#### `transferToken(address _receiver, uint256 _value) external`

This function allows an address to transfer tokens to another address. It takes the recipient's address and the amount of tokens to transfer as parameters. The function requires the sender to have a sufficient balance of tokens.

#### `ReedemToken(uint256 _number) public payable`

This function allows an address to redeem a specific item from the store by providing the item's index in the `items` array. It requires the caller to have a sufficient balance of tokens to cover the item's token value.

#### `BurnToken(uint256 _value) public`

This function allows an address to burn a specific amount of tokens from their own balance. It requires the caller to have a sufficient balance of tokens to burn.

## Contributing
### forked from Metacrafters
### L.Santhosh Kumar
Contributions to this project are welcome. If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.

## Contact

For further information or inquiries, please contact the project maintainer at [l.santhoshkumar30@gmail.com].

