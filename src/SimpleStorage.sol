//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 favouriteNumber = 0;
    uint256[] favouriteNumberList;

    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    mapping(string => uint256) public nameToFavouriteNumber;
    Person[] public listOfPeople;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber, name));
        nameToFavouriteNumber[name] = _favouriteNumber;
    }
}
