// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract GovernanceShare is ERC20, ERC20Permit {
    constructor() ERC20("GovernanceShare", "GOV") ERC20Permit("GovernanceShare") {
        _mint(msg.sender, 5000000 * 10 ** decimals());
    }
}