{ pkgs, inputs, ... }: {
  home.packages =
    with pkgs;
    # GUI applications
    [
      anki
      ardour
      chromium
      code-cursor
      davinci-resolve
      discord
      ghostty
      hyprlock
      libreoffice-fresh
      mpv
      obs-studio
      obsidian
      opencode
      pavucontrol
      prusa-slicer
      qbittorrent
      rawtherapee
      rofi
      sfizz-ui
      surge-xt
      telegram-desktop
      thunar
      thunderbird
      vscode
      warpinator
      waybar
      zed-editor

      # Flake-based packages
      inputs.mathkit.packages.${pkgs.stdenv.hostPlatform.system}.default
      inputs.xmcl.packages.${pkgs.stdenv.hostPlatform.system}.default
      inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    ]
    # CLI tools
    ++ [
      amneziawg-go
      amneziawg-tools
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
