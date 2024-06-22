// SPDX-License-Identifier: MIT
pragma solidity 0.5.16;

// This is a simple storage contract
// State variable to store an unsigned integer
contract SimpleStorage {
    uint256 private data;

    // Function to set the value of the 'data' variable
    // @param _data: the new value to store in 'data'
    function set(uint256 _data) public {
        data = _data;
    }
    // Function to get the current value of the 'data' variable
    // @return: the value stored in 'data'
    function get() public view returns (uint256) {
        return data;
    }
}
