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
    hydralauncher
    hyprlock
    pavucontrol
    steam
    logseq
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    warpinator
    libreoffice-fresh

    git
    docker
    btop
    fastfetch
    syncthing
    brightnessctl
    gnutar
    ffmpeg
    
    gcc
    go
    clang-tools
    python3
  ];
}
