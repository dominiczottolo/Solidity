pragma solidity ^0.4.0;

contract Group{
    struct Person {
        string name;
        uint age;
    }
    
    Person[] allPeople;
    
    function addPerson(string _name, uint _age){
        allPeople.push(Person(_name, _age));
    }
    
    function getAverageAge() view returns (uint){
        uint total;
        for(uint i=0;i < allPeople.length; i++){
            total += allPeople[i].age;
        }
        return total/allPeople.length;
    }
    
}