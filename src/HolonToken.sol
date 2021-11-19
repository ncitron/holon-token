// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import { ERC20Votes } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";


contract HolonToken is ERC20, ERC20Permit, ERC20Votes, Ownable {

    constructor(address _owner) ERC20("Holon", "HOLON") ERC20Permit("Holon") {
        _transferOwnership(_owner);
    }

    function mint(address _to, uint256 _amount) external onlyOwner {
        _mint(_to, _amount);
    }

    /* ========= Internal Functions ========== */

    function _afterTokenTransfer(
        address _from,
        address _to,
        uint256 _amount
    )
        internal
        override(ERC20, ERC20Votes)
    {
        super._afterTokenTransfer(_from, _to, _amount);
    }

    function _mint(address _to, uint256 _amount) internal override(ERC20, ERC20Votes) {
        super._mint(_to, _amount);
    }

    function _burn(address _account, uint256 _amount) internal override(ERC20, ERC20Votes) {
        super._burn(_account, _amount);
    }
}
