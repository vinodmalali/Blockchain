// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
 
interface Election {
    function approveCandidiate(uint256 num) external;
 
    function setStart(uint256 start) external;
 
    function setStop(uint256 stop) external;
 
    function getResults() external;
 
    function kill() external;
 
}
 
 
contract ElectionCommision {
 
    address public admin;
 
    constructor() {
 
        admin = msg.sender;
 
    }
 
 
    modifier adminOnly() {
 
        require(msg.sender == admin,"No admin");
 
        _;
 
    }
 
    event consolePrint( string, uint, string);
 
    function approveCandidate(address election, uint256 id) public adminOnly {
 
        require(election != address(0),"Invalid Address");
 
        Election e = Election(election);
 
        e.approveCandidiate(id);
 
         emit consolePrint("Candidate with the Id: ", id," has been approved");
 
    }
 
 
    function setStart(address election, uint256 time) public adminOnly {
 
        Election e = Election(election);
 
        e.setStart(time);
 
    }
 
 
    function setStop(address election, uint256 time) public adminOnly {
 
        Election e = Election(election);
 
        e.setStop(time);
 
    }
 
 
    function withdraw() public {
 
        uint amount = address(this).balance;
 
        (bool success, ) = admin.call{value: amount}("");
 
        require(success, "Failed to send Ether");
 
    }
 
 
    function kill(address election) public adminOnly{
 
        Election e = Election(election);
 
        e.kill();
 
    }
 
 
    receive() external payable {}
 
 
    fallback() external payable {}
 
}