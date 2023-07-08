// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    // string[] items =["NFT","Degen T-shirt","Degen product"];

    struct StoreProduct{
        string name;
        uint256 token;
    }
    StoreProduct[] public items;

    function addItem(string memory _name, uint256 _token) public onlyOwner {
        items.push(StoreProduct(_name, _token));
    }

    constructor() ERC20("Degen", "DGN") {}

        function mint(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
       }
       function getBalance() external view returns(uint256){
           return this.balanceOf(msg.sender);
       }
       function transferToken(address _receiver , uint256  _value) external{
           require(balanceOf(msg.sender) >= _value ,"You do not have enough Token");
           approve(msg.sender,_value);
           transferFrom(msg.sender,_receiver,_value);
       }

       function ReedemToken(uint256 _number) public payable{
            require(_number<=items.length,"no such product");
            require(balanceOf(msg.sender)>=_number,"no enough token");
            approve(msg.sender,items[_number].token);
            transferFrom(msg.sender,address(this),items[_number].token);
       }
       
       function BurnToken(uint256 _value) public{
           require(balanceOf(msg.sender)>=_value,"Insufficient token");
            _burn(msg.sender,_value);
       }
}