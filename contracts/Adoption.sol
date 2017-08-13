pragma solidity ^0.4.4;

contract Adoption {
  address[16] public adopters;

  event debug(address indexed _from, uint256 _value);

  function adopt(uint petId) public returns (uint) {
    require(petId >= 0 && petId <= 15);
    adopters[petId] = msg.sender;
    debug(msg.sender, petId);
    return petId;
  }

  function getAdopters() public returns (address[16]) {
    return adopters;
  }
}
