// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Lending.sol";
import "../src/mocks/Token.sol";
contract ContractTest is Test {
    Lending lend;
    testToken token;
    address depositor = mkaddr("depositor");
    address owner = mkaddr("owner");
    function setUp() public {
        lend = new Lending();
        token = new testToken();
        lend.transferOwnership(owner);

    }

    function testFunctions() public {
      vm.prank(owner);
      lend.setAllowedToken(address(token), address(0x0000000000000000000000000000000000000000));
      vm.startPrank(depositor);
      lend.deposit(address(token), 100);  
    }
    function mkaddr(string memory name) public returns (address) {
        address addr = address(uint160(uint256(keccak256(abi.encodePacked(name)))));
        vm.label(addr, name);
        return addr;
    }
}
