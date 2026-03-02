{ pkgs, inputs, config, ... }:
{
  nixpkgs.config.allowUnfree = true;

  imports = [
    inputs.zen-browser.homeModules.default
  ];


  # The home.packages option allows you to install Nix packages into your
  # environment.

  programs.zen-browser.enable = true;
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
    # zen-browser.packages."x86_64-linux".default

    git
    btop
    fastfetch
    syncthing
    brightnessctl
  ];
}
