{ pkgs, ... }:

{
  services.mpd = {
    enable = true;

    musicDirectory = "~/Music";

    # extraConfig = ''
    #   audio_buffer_size 512MB
    # '';
  };
}
