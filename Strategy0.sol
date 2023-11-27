// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.3/contracts/token/ERC20/IERC20.sol";
import "./interfaces/IStrategy.sol";

/// @custom:security-contact info@whynotswitch.com
contract Strategy0 is IStrategy {
    error TransferError();

    IERC20 public constant DAI =
        IERC20(0xd9145CCE52D386f254917e481eB44e9943F39138);

    function claim(uint256 amount, bytes calldata data) external {
        address to = abi.decode(data, (address));
        if (!DAI.transferFrom(msg.sender, to, amount)) revert TransferError();
    }
}
