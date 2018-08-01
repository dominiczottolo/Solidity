pragma solidity ^0.4.0;

contract Dog{
    
    string output = "I'm a dog.";
    int number = 1;
    uint posNumber = 2;
    
    // function name (won't modify) returns (return type)
    function bark() view returns (string) {
        return output;
    }
    
    // don't need view or return type
    function setOutput(string _output) {
        output = _output;
    }
    
    function getNumber() returns (int){
        return number;
    }
    
}