{ pkgs, ... }: {
  programs.hyprland.enable = true;
  programs.niri.enable = true;

  programs.steam.enable = true;
  programs.steam.extraCompatPackages = with pkgs; [
    dwproton-bin
    proton-ge-bin
  ];

  programs.fish.enable = true;
}
