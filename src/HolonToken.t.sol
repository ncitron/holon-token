// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";

import "./HolonToken.sol";

contract Owner {
    function mint(HolonToken _token, address _to, uint256 _amount) external {
        _token.mint(_to, _amount);
    }
}

contract User {
    function mint(HolonToken _token, address _to, uint256 _amount) external {
        _token.mint(_to, _amount);
    }
}

contract HolonTokenTest is DSTest {

    HolonToken token;
    Owner owner;
    User user;

    function setUp() public {
        owner = new Owner();
        user = new User();

        token = new HolonToken(address(owner));
    }

    function test_mint() public {
        owner.mint(token, address(0x1), 52 ether);

        assertEq(token.balanceOf(address(0x1)), 52 ether);
        assertEq(token.totalSupply(), 52 ether);
    }

    function testFail_mintNotOwner() public {
        user.mint(token, address(0x1), 53 ether);
    }
}
