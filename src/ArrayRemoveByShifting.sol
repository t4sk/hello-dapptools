// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

contract ArrayRemoveByShifting {
    uint[] internal arr;

    function remove(uint _index) internal {
        require(_index < arr.length, "index out of bound");

        for (uint i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }

        arr.pop();
    }
}