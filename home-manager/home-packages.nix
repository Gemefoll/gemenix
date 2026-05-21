{ pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  # The home.packages option allows you to install Nix packages into your
  # environment.

  home.packages = with pkgs; [
    amneziawg-go
    amneziawg-tools
    anki
    code-cursor
    davinci-resolve
    digikam
    discord
    ghostty
    hyprlock
    inputs.mathkit.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    libreoffice-fresh
    logseq
    mindustry-wayland
    obs-studio
    obsidian
    pavucontrol
    prusa-slicer
    qbittorrent
    rofi
    telegram-desktop
    thunar
    thunderbird
    vlc
    vscode
    warpinator
    waybar
    zed-editor

    brightnessctl
    btop
    bubblewrap
    cava
    docker
    fastfetch
    ffmpeg
    gamemode
    git
    gnutar
    nil
    nixd
    nushell
    ollama
    opencode
    rmpc
    starship
    syncthing
    tinymist
    typst
    unzip
    yt-dlp-light
    zip

    clang-tools
    gcc
    gdb
    go
    python3
    rustup

    # for screenshots
    grim
    slurp
    wl-clipboard
  ];
}
