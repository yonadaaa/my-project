// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

interface ICommitRevealSystem {
  function commit(bytes32 commitment) external;

  function reveal(bytes32 key, bytes memory value) external;
}
