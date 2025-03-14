// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageList;

    function CreateSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        simpleStorageList.push(newSimpleStorageContract);
    }

    function sfStore(
        uint256 _simpleStorageIndex,
        uint256 _newSimpleStorageNumber
    ) public {
        simpleStorageList[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return simpleStorageList[_simpleStorageIndex].retrieve();
    }
}
