// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";

import "./HelloDapptools.sol";

contract HelloDapptoolsTest is DSTest {
    HelloDapptools dapptools;

    function setUp() public {
        dapptools = new HelloDapptools();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
