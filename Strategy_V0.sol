// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.3/contracts/token/ERC20/IERC20.sol";

/// @custom:security-contact info@whynotswitch.com
contract Strategy_V0 {
    error TransferError();

    function claim(uint256 revenueAmount, address receiver, uint256 outputAmount, uint256 deadline) public {
        if (!IERC20(0xd9145CCE52D386f254917e481eB44e9943F39138).transferFrom(msg.sender, receiver, revenueAmount)) revert TransferError();
    }
}
