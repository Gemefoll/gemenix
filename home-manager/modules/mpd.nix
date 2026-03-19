{ pkgs, ... }:

{
  services.mpd.enable = true;
  services.mpd.musicDirectory = "/home/gemefoll/Music";
}
