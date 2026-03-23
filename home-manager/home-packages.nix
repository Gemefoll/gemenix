{ pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  # The home.packages option allows you to install Nix packages into your
  # environment.

  home.packages = with pkgs; [
    alacritty
    amneziawg-tools
    anki
    code-cursor
    digikam
    hyprlock
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    kitty
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
    docker
    fastfetch
    ffmpeg
    git
    gnutar
    rmpc
    syncthing
    unzip
    zip

    clang-tools
    gcc
    go
    python3
    rustup

    # for screenshots
    grim
    slurp
    wl-clipboard
  ];
}
