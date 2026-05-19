{ lib, ... }:
{
  options.myAliases = lib.mkOption {
    type = lib.types.attrsOf lib.types.str;
    default = { };
    description = "Custom shell aliases shared across shells";
  };
}
