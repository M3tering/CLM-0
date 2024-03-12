// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./interfaces/IStrategy.sol";

/// @custom:security-contact info@whynotswitch.com
contract Strategy0 is IStrategy {
    error TransferError();

    function claim(bytes calldata data) external payable {
        address to = abi.decode(data, (address));

        (bool sent, ) = to.call{value: msg.value}("");
        if (!sent) revert TransferError();
    }
}
