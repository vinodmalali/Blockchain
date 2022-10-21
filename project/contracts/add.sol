// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract add{

function addd(int a, int b) public pure returns(int){
return a+b;
}

function sub1(int a, int b) public pure returns(int){
return a-b;
}

function mul(int a, int b) public pure returns(int){
return a*b;
}

function div(int a, int b) public pure returns(int){
return a/b;
}

function pow(uint a, uint b) public pure returns (uint){
return a**b;
}

}