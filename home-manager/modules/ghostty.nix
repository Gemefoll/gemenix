{
  programs.ghostty = {
    enable = true;
    systemd.enable = true;
    settings = {
      quit-after-last-window-closed = false;
    };
  };
}
