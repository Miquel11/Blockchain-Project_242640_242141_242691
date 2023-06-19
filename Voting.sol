pragma solidity ^0.8.0;

//Voting contract

contract Voting {
    Oracle private oracle;
    mapping(uint256 => uint256) private voteCount;

    constructor(address oracleAddress) {
        oracle = Oracle(oracleAddress);
    }

    function vote(uint256 option, bytes memory signature) public {
        require(oracle.validateVote(option, signature), "Invalid vote");

        //Register the vote and update the results
        voteCount[option]++;
    }

    function getVoteCount(uint256 option) public view returns (uint256) {
        return voteCount[option];
    }

    function isVoteValid(uint256 option) public view returns (bool) {
        return oracle.isVoteValid(option);
    }
}