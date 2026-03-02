{ pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  # The home.packages option allows you to install Nix packages into your
  # environment.

  # programs.zen-browser.enable = true;
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
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default

    git
    btop
    fastfetch
    syncthing
    brightnessctl
  ];
}
