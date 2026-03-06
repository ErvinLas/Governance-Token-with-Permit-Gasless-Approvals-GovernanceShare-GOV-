// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LimitedGold is ERC20, ERC20Capped, Ownable {
    // Max cap is 21 million
    constructor() ERC20("LimitedGold", "LGLD") ERC20Capped(21000000 * 10 ** decimals()) Ownable(msg.sender) {
        // Initial mint of 1 million
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function _update(address from, address to, uint256 value) internal override(ERC20, ERC20Capped) {
        super._update(from, to, value);
    }
}