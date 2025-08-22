// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {SimpleStorage} from "./simpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    // +5 of every return of every Favorite Number
    // Overrides
    // virtual overide
    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;
    }
}