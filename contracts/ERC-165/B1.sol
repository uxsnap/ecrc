// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC165Implementation.sol";
import "./A.sol";

abstract contract B1 is ERC165Implementation, A {
    function foo() public override pure returns (uint256) {
        return 1;
    }

    function foo1() public pure returns (uint256) {
        return foo();
    }

    function bar1() internal pure returns (uint256) {
        return 2;
    }
}
