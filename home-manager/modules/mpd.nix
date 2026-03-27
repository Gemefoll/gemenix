{ pkgs, user, ... }:

{
  services.mpd = {
    enable = true;

    musicDirectory = "/home/${user}/Music";

    # extraConfig = ''
    #   audio_buffer_size 512MB
    # '';
  };
}
