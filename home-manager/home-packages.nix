{ pkgs, inputs, ... }: {
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.cudaSupport = true;

  home.packages =
    with pkgs;
    # GUI applications
    [
      anki
      chromium
      davinci-resolve
      discord
      ghostty
      hyprlock
      libreoffice-fresh
      localsend
      maptool
      mpv
      obs-studio
      obsidian
      opencode
      osu-lazer-bin
      pavucontrol
      prusa-slicer
      qbittorrent
      rawtherapee
      sideband
      telegram-desktop
      thunar
      tor-browser
      vicinae
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
      linux-wallpaperengine
      nil
      nixd
      nodejs_26
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
