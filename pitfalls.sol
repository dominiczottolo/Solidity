pragma solidity ^0.4.0;

contract Fund{
    mapping(address => uint) shares;
    function withdraw() public {
        if(msg.sender.send(shares[msg.sender]))
            shares[msg.sender] = 0;
    }
}

// Development Pattern
// Checks-Effects-Interactions

contract Fund{
    mapping(address=>uint) shares;
    function withdraw() public {
        var share = shares[msg.sender];
        shares[msg.sender] = 0;
        msg.sender.transfer(share);
    }
}

// Loops without fixed number of iterations 

// Never use tx.origin for auth - use msg.sender
// people could proxy transactions and act as you

// fail safe mode