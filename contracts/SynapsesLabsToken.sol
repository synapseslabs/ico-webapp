pragma solidity ^0.4.24;

import "../node_modules/zeppelin-solidity/contracts/token/ERC20/BurnableToken.sol";
import "../node_modules/zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "../node_modules/zeppelin-solidity/contracts/token/ERC20/DetailedERC20.sol";

contract SynapsesLabsToken is BurnableToken, StandardToken, DetailedERC20{

    constructor(string _name, string _symbol, uint8 _decimals, uint256 _totalSupply) 
       DetailedERC20(_name, _symbol, _decimals) 
       public {
       
        require(_totalSupply > 0);
       
        totalSupply_ = _totalSupply;
        balances[msg.sender] = _totalSupply;
    }

}