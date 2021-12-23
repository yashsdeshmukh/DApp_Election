pragma solidity >=0.4.22 <0.8.0;

contract Election{
    //Model candidate
    //store count of candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    //Store candidate
    //Fetch candidate
    // We will use id as key to get any candidate
    mapping(uint => Candidate) public candidates;
    uint public candidatesCount;

    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");

    }
    function addCandidate (string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

}