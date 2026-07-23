{ user, ... }:

{
  services.mpd = {
    enable = true;

    musicDirectory = "/home/${user}/Music";
    extraConfig = "
    audio_output {
        type    \"pipewire\"
        name    \"PipeWire Output\"
    }
    ";
  };
  services.mpd-mpris.enable = true;
}
