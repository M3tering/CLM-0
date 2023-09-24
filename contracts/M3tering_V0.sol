// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./protocol-abc/Protocol.sol";
import "./interfaces/IM3tering_V0.sol";

/// @custom:security-contact info@whynotswitch.com
contract M3tering_V0 is Protocol, IM3tering_V0 {
    function claim() external whenNotPaused {
        uint256 amount = revenues[msg.sender];
        if (amount < 1) revert InputIsZero();
        revenues[msg.sender] = 0;
    
        if (!DAI.transfer(msg.sender, amount)) revert TransferError();
        emit Claim(msg.sender, amount, block.timestamp);
    }
}