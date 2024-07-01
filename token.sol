pragma solidity >=0.6.12 <0.9.0;

// Define the contract 'luffytoken'
contract luffytoken {

  // Public variables representing the token's name, power, and total supply loss
  string public name = "luffy";
  string public power = "gum gum";
  uint public loss = 0;

  // Mapping to keep track of balances of addresses
  mapping(address => uint) public balances;

  
  function mint(address _add, uint _value) public {
    loss += _value;
    balances[_add] += _value;
  }

  // Function to burn (destroy) tokens from a specific address
  function burn(address _add, uint _value) public {
    if (balances[_add] >= _value) {
      loss -= _value;
      balances[_add] -= _value;
    }
  }
}
