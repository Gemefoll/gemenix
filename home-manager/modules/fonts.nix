{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    font-awesome_4
    jetbrains-mono
  ];
}
