{ pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.cudaSupport = true;

  # The home.packages option allows you to install Nix packages into your
  # environment.

  home.packages = with pkgs; [
    amneziawg-go
    amneziawg-tools
    anki
    ardour
    chromium
    code-cursor
    davinci-resolve
    discord
    ghostty
    hyprlock
    inputs.mathkit.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.xmcl.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    libreoffice-fresh
    mpv
    obs-studio
    obsidian
    pavucontrol
    prusa-slicer
    qbittorrent
    rawtherapee
    rofi
    sfizz-ui
    steam-devices-udev-rules
    surge-xt
    telegram-desktop
    thunar
    thunderbird
    vscode
    warpinator
    waybar
    zed-editor

    brightnessctl
    btop-cuda
    cava
    docker
    fastfetch
    ffmpeg
    gamemode
    gcan
    git
    gnutar
    nil
    nixd
    nushell
    rmpc
    starship
    syncthing
    tinymist
    typst
    unzip
    wl-clipboard
    yt-dlp-light
    zip

    clang-tools
    gcc
    gdb
    go
    python3
    rustup
  ];
}
