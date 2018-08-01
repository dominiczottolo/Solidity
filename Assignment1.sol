pragma solidity ^0.4.0;

contract Person{

    uint age;
    string name;
    
    function getAge() returns (uint){
        return age;
    }
    
    function setAge(uint _age){
        age = _age;
    }
    
    function getName() returns (string) {
        return name;
    }
    
    function setName(string _name){
        name = _name;
    }
    
}