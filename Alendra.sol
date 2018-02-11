pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Alendra is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Alendra(address _owner)  UpgradeableToken(_owner) {
    name = "Alendra";
    symbol = "LEN";
    totalSupply = 800000000000000000;
    decimals = 9;

    balances[_owner] = totalSupply;
  }
}