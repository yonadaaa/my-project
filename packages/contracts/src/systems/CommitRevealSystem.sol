// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { System } from "@latticexyz/world/src/System.sol";
import { getUniqueEntity } from "@latticexyz/world/src/modules/uniqueentity/getUniqueEntity.sol";
import { Commitment } from "../codegen/Tables.sol";

contract CommitRevealSystem is System {
  function commit(bytes32 commitment) public {
    Commitment.setCommitment(getUniqueEntity(), commitment);
  }

  function reveal(bytes32 key, bytes memory value) public {
    bytes32 commitment = keccak256(value);

    require(Commitment.getCommitment(key) == commitment, "Commitment does not match");

    Commitment.setValue(key, value);
  }
}
