pragma solidity >=0.4.22 <0.8.0;

contract Election{
    //Store candidate
    //Read candidate
    string public candidate;
    //constructor
    constructor() public {
        candidate = "Candidate 1";
    }
}