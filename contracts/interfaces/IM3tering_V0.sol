// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./protocol-abc/IProtocol.sol";

interface IM3tering_V0 is IProtocol {
    function claim() external;
}