{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    firefox
    vscode
    rofi
    alacritty
    waybar
    telegram-desktop
    amnezia-vpn
    harmonoid
    steam
    pavucontrol
    logseq

    git
    btop
    fastfetch
    syncthing
    brightnessctl
  ];
}
