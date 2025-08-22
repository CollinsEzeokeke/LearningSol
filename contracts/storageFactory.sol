// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {SimpleStorage} from "./simpleStorage.sol";

contract storageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    uint256[] arrayOfNumbers;

    function createSimpleStorageContract() public {
        SimpleStorage newSimplestorageContracts = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimplestorageContracts);
    }

    function sfStore(
        uint256 _simpleStorageIndex,
        uint256[] memory _newSimpleStorageNumber
    ) public {
        // Address
        // ABI: Application Binary Interface
        SimpleStorage simpleStorage = listOfSimpleStorageContracts[
            _simpleStorageIndex
        ];
        arrayOfNumbers = _newSimpleStorageNumber;
        simpleStorage.store(arrayOfNumbers);
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256[] memory) {
        SimpleStorage simpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }
}
