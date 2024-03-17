// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./interfaces/ICLM.sol";

/// @custom:security-contact info@whynotswitch.com
contract CLM0 is ICLM {
    error TransferError();

    function claim(bytes calldata data) external payable {
        address to = abi.decode(data, (address));

        (bool sent, ) = to.call{value: msg.value}("");
        if (!sent) revert TransferError();
    }
}
