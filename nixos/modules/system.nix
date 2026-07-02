{ pkgs, ... }: {
  boot.loader = {
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
    };
    efi.canTouchEfiVariables = true;
  };

  boot.kernelPackages = pkgs.linuxPackages_latest;

  hardware.enableAllFirmware = true;
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  time.timeZone = "Europe/Moscow";

  environment.systemPackages = with pkgs; [
    nixfmt
    vim
  ];

  system.stateVersion = "25.11";
}
