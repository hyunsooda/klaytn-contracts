pragma solidity 0.5.6;

import "./KIP17.sol";
import "../../ownership/Ownable.sol";

contract KIP17ServiceChain is KIP17, Ownable {
    using Address for address;
    address public bridge;

    constructor(address _bridge) internal {
        if (!_bridge.isContract()) {
            revert("bridge is not a contract");
        }
        bridge = _bridge;
    }

    function setBridge(address _bridge) public onlyOwner {
        bridge = _bridge;
    }
}


