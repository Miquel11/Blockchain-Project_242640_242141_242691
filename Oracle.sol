pragma solidity ^0.8.0;

//Oracle contract
contract Oracle {
    mapping(uint256 => bool) private validVotes;

    function validateVote(uint256 option, bytes memory signature) public returns (bool) {
        //Validate the cryptografic signature of the vote
        //Implement the logic to verify the authenticity of the vote and make sure the voter is authorized 

        //In this example we will assume that votes are valid without performing any additional validation
        validVotes[option] = true;

        return true;
    }

    function isVoteValid(uint256 option) public view returns (bool) {
        return validVotes[option];
    }
}