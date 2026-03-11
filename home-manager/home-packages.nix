{ pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  # The home.packages option allows you to install Nix packages into your
  # environment.

  home.packages = with pkgs; [
    alacritty
    amnezia-vpn
    anki
    harmonoid
    hyprlock
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    libreoffice-fresh
    logseq
    mindustry-wayland
    pavucontrol
    qbittorrent
    rofi
    steam
    telegram-desktop
    thunar
    vlc
    vscode
    warpinator
    waybar

    brightnessctl
    btop
    bubblewrap
    docker
    fastfetch
    ffmpeg
    git
    gnutar
    syncthing
    unzip
    zip

    clang-tools
    gcc
    go
    python3
  ];
}
