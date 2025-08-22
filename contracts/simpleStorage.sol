// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // stating our version

contract SimpleStorage {
    uint256[] myFavoriteNumber; // same as 0

    //uint256[] listOfFavoriteNumbers; // [arrays]

    struct person{
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    person[] public people; // defaults to being empty []

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256[] memory _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns(uint256[] memory) {
        return myFavoriteNumber;
    }

    // callData, memory, storage
    function addPersons(string memory _name, uint256 _favoriteNumber) public {
        people.push(person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}


