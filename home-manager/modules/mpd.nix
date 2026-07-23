{ user, ... }:

{
  services.mpd = {
    enable = true;

    musicDirectory = "/home/${user}/Music";
  };
  services.mpd-mpris.enable = true;
}
