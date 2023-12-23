// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenStore is ERC20, Ownable {

error NotEnoughDegen(string);

enum RedeemItems { Guns, Extralive, Vehicle, Drone }

constructor() ERC20("Degen", "DGN")Ownable(msg.sender) {}

function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}

function TransferDegen(address to, uint256 amount) external returns(bool success){
    if(amount < balanceOf(msg.sender)){
        revert NotEnoughDegen("Degen Token not enough");
    }
  success = transfer(to, amount);
}

function burn(uint256 amount) external {
    if(amount < balanceOf(msg.sender)){
        revert NotEnoughDegen("Degen Token not enough");
    }
    _burn(msg.sender, amount);
}

function redeemItems(RedeemItems item) external {
    uint256 price = 0;
     if (item == RedeemItems.Guns) {
        price = 10;
    } else if (item == RedeemItems.Extralive) {
        price = 8;
    } else if (item == RedeemItems.Vehicle) {
        price = 6;
    } else if (item == RedeemItems.Drone) {
        price = 4;
    }else{
        price = 0;
    }

    if(price < balanceOf(msg.sender)){
        revert NotEnoughDegen("Degen Token not enough");
    }
    _transfer(msg.sender, address(this), price);
}

function withdrawFunds()external onlyOwner{
    _transfer(address(this), msg.sender, balanceOf(address(this)));

}

function getBalance() public view returns (uint256) {
    return balanceOf(msg.sender);
}
}