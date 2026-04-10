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
    digikam
    discord
    ghostty
    hyprlock
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    kdePackages.kdenlive
    libreoffice-fresh
    logseq
    mindustry-wayland
    obs-studio
    obsidian
    pavucontrol
    prusa-slicer
    qbittorrent
    rofi
    steam
    telegram-desktop
    thunar
    thunderbird
    vlc
    vscode
    warpinator
    waybar

    brightnessctl
    btop
    bubblewrap
    cava
    cmatrix
    docker
    fastfetch
    ffmpeg
    git
    gnutar
    quickshell
    rmpc
    syncthing
    typst
    unzip
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
