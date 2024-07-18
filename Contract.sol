// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "./ERC20Burnable.sol";
import "./Ownable.sol";

contract UnfetteredEcosystem is ERC20Burnable, Ownable {

    constructor(string memory name, string memory symbol, uint8 _decimal, uint256 initialSupply) ERC20(name, symbol, _decimal) {
        uint256 amount = initialSupply * 10 ** decimals();
        _mint(msg.sender, amount);
    }
}