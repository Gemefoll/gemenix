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

  xdg.mimeApps = {
    enable = true;

    defaultApplications = {
      # Text
      "text/plain" = "dev.zed.Zed.desktop";

      # Web / email
      "x-scheme-handler/http" = "zen.desktop";
      "x-scheme-handler/https" = "zen.desktop";
      "x-scheme-handler/mailto" = "zen.desktop";

      # PDF
      "application/pdf" = "zen.desktop";

      # Video
      "video/mp4" = "mpv.desktop";
      "video/webm" = "mpv.desktop";
      "video/x-matroska" = "mpv.desktop";
      "video/mpeg" = "mpv.desktop";

      # Audio
      "audio/mpeg" = "mpv.desktop";
      "audio/ogg" = "mpv.desktop";
      "audio/wav" = "mpv.desktop";
      "audio/flac" = "mpv.desktop";
    };
  };

  home.packages =
    with pkgs;
    # GUI applications
    [
      chromium
      davinci-resolve
      discord
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
      nodejs_26
      python3
      rustup
    ]
    # Hardware & udev
    ++ [
      steam-devices-udev-rules
    ];
}
