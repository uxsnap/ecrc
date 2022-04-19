// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./A.sol";
import "./B1.sol";
import "./B2.sol";

contract C is B1, B2 {
    function check1() public view returns (uint256) {
        return supportsInterface(type(A).interfaceId) ? foo1() : bar1();
    }

    function check2() public view returns (uint256) {
        // f002 will be called because of inheritance from the B1
        return supportsInterface(type(A).interfaceId) ? foo2() : bar2();
    }
}
