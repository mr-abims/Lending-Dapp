// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "../../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract testToken is ERC20("TESTTOKEN", "TTT") {
    function mint(address _to, uint256 _amount) public {
        _mint(_to, _amount);
    }
}
