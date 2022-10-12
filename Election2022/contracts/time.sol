// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Time{

    function getTIME() public view returns (uint256){
        return block.timestamp;
    }

}