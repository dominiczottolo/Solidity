pragma solidity^0.4.0;

import './DogContract.sol';

contract Kennel is DogContract {
    
    // private, public, internal, external
    function transferDog(address _newOwner) {
        address owner = msg.sender;
        uint dogId = ownerToDog[owner];
        delete(ownerToDog[owner]);
        ownerToDog[_newOwner] = dogId;
    }
    
    function addKennelDog(string _name, uint _age) {
        addDog(_name, _age);
        
    }
    
}