// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@thirdweb-dev/contracts/base/ERC1155Base.sol";
import "@thirdweb-dev/contracts/extension/PermissionsEnumerable.sol";

contract IceyPass is ERC1155Base, PermissionsEnumerable {
      constructor(
        string memory _name,
        string memory _symbol,
        address _royaltyRecipient,
        uint128 _royaltyBps
    )
        ERC1155Base(
            _name,
            _symbol,
            _royaltyRecipient,
            _royaltyBps
        )
    {
         // Give the contract deployer the "admin" role when the contract is deployed.
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }
}