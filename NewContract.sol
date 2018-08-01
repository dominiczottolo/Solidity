pragma solidity ^0.4.0;

contract DogContract {
    
    struct Dog {
        string name;
        uint age;
    }
    
    mapping(address => uint) ownerToDog;
    
    Dog[] dogs;
    
    function addDog(string _name, uint _age) {
        address owner = msg.sender;
        // first id == 1
        uint id = dogs.push(Dog(_name, _age));
        ownerToDog[owner] = id;
    }
    
    function getDog() returns (string){
        address owner = msg.sender;
        uint id = ownerToDog[owner];
        
        // because first id == 1
        return dogs[id-1].name;
    }
    
}