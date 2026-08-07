{ pkgs, inputs, ... }: {
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.cudaSupport = true;

  programs.anki.enable = true;
  programs.hyprlock.enable = true;
  programs.ghostty.enable = true;
  programs.opencode.enable = true;
  programs.obsidian = {
    enable = true;
    cli.enable = true;
  };
  programs.vicinae = {
    enable = true;
    systemd.enable = true;
  };
  programs.vscode.enable = true;
  programs.zed-editor.enable = true;

  home.packages =
    with pkgs;
    # GUI applications
    [
      aerion
      chromium
      davinci-resolve
      discord
      goldendict-ng
      koodo-reader
      libreoffice-fresh
      localsend
      marimo
      mpv
      obs-studio
      osu-lazer-bin
      pavucontrol
      prusa-slicer
      qbittorrent
      rawtherapee
      telegram-desktop
      thunar
      tor-browser
      vscode
      waybar
      zed-editor

      # Flake-based packages
      inputs.mathkit.packages.${pkgs.stdenv.hostPlatform.system}.default
      inputs.xmcl.packages.${pkgs.stdenv.hostPlatform.system}.default
      inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    ]
    # CLI tools
    ++ [
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
    ]
    # Dev tools
    ++ [
      clang-tools
      gcc
      gdb
      go
      python3
      rustup
    ]
    # Hardware & udev
    ++ [
      steam-devices-udev-rules
    ];
}
