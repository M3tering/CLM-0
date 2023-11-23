// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.3/contracts/token/ERC20/IERC20.sol";

/// @custom:security-contact info@whynotswitch.com
library Strategy_V0 {
    error TransferError();

    function claim(uint256 revenueAmount, address receiver, uint256 outputAmount, uint256 deadline) public {
        if (!IERC20(0x1CbAd85Aa66Ff3C12dc84C5881886EEB29C1bb9b).transfer(receiver, revenueAmount)) revert TransferError();        
    }
}