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

    //Mapping voter address to boolean value to check if he has voted
    mapping(address=> bool) public voters;
    uint public candidatesCount;

    constructor() public {
        addCandidate("Coffee");
        addCandidate("Chai");

    }
    function addCandidate (string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote (uint _candidateId) public{
        //require that the voter has not cast a vote before
        require(!voters[msg.sender]);

        //require a valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        //mark that voter has put his vote
        voters[msg.sender] = true;

        //update candidate vote count
        candidates[_candidateId].voteCount++;
    }

}