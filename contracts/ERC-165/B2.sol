// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC165Implementation.sol";
import "./A.sol";

abstract contract B2 {
    function foo2() public pure returns (uint256) {
        return 1;
    }

    function bar2() internal pure returns (uint256) {
        return 2;
    }
}
