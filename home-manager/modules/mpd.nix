{ pkgs, ... }:

{
  services.mpd = {
    enable = true;

    musicDirectory = "/home/gemefoll/Music";

    # extraConfig = ''
    #   audio_buffer_size 512MB
    # '';
  };
}
