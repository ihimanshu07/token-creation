pragma solidity >=0.6.12 <0.9.0;

contract luffytoken {

  string public name = "luffy";
  string public power = "gum gum";
  uint public loss = 0;

  mapping(address => uint) public balances;

  function mint(address _add, uint _value) public {
    loss += _value;
    balances[_add] += _value;
  }

  function burn(address _add, uint _value) public {
    if (balances[_add] >= _value) {
      loss -= _value;
      balances[_add] -= _value;
    }
  }
}
