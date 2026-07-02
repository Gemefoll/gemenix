{
  imports = [
    ./hardware-configuration.nix
    ./modules
  ];

  zramSwap.enable = true;
}
