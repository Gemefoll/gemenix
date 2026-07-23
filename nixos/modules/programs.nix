{ pkgs, ... }: {
  programs.niri.enable = true;

  programs.steam.enable = true;
  programs.steam.extraCompatPackages = with pkgs; [
    proton-ge-bin
  ];

  programs.fish.enable = true;

  programs.throne = {
    enable = true;
    tunMode.enable = true;
  };
}
