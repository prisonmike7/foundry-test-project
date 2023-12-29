// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Simple mock ERC20 token contract
contract MockERC20 is ERC20 {
    constructor() ERC20("Mock ERC20", "MOCK") {
        _mint(msg.sender, 10e18);
    }
}
