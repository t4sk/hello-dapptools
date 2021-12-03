// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "@openzeppelin/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
  constructor() ERC20("MyToken", "MYTOKEN") {}
}