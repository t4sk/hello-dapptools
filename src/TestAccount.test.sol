// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";

contract Ownable {
  address public owner = msg.sender;

  function setOwner(address _owner) external {
    require(msg.sender == owner);
    owner = _owner;
  }
}

contract Account {
  Ownable private ownable;

  constructor(address _ownable) {
    ownable = Ownable(_ownable);
  }

  function setOwner(address _owner) external {
    ownable.setOwner(_owner);
  }
}

contract TestOwnable is DSTest {
  Ownable private ownable;
  Account private alice;

  function setUp() public {
    ownable = new Ownable();
    alice = new Account(address(ownable));
  }

  function test_setOwner() public {
    ownable.setOwner(address(1));
    assertEq(ownable.owner(), address(1));
  }

  function setFail_setOwner() public {
    alice.setOwner(address(alice));
  }
}