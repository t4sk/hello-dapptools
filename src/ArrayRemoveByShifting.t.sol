// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";
import "./ArrayRemoveByShifting.sol";

contract TestArrayShift is ArrayRemoveByShifting, DSTest {
    uint[] private copy;

    function test_remove(uint[] memory _arr, uint _i) public {
        if (_i >= _arr.length) {
            return;
        }

        arr = _arr;

        // reset copy
        delete copy;
        // copy elements except _i th element
        for (uint i = 0; i < arr.length; i++) {
            if (i != _i) {
                copy.push(arr[i]);
            }
        }

        remove(_i);

        assertEq(arr.length, copy.length);

        // for (uint i = 0; i < arr.length; i++) {
        //     assertEq(arr[i], copy[i]);
        // }
    }
}
