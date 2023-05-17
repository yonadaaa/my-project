import { mudConfig } from "@latticexyz/world/register";

export default mudConfig({
  tables: {
    Commitment: {
      schema: { commitment: "bytes32", value: "bytes" },
    },
  },
});
