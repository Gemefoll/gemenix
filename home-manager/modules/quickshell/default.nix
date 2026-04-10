{ pkgs, ... }:
{
  xdg.configFile."quickshell".source = ./;
  xdg.configFile."quickshell".force = true;
}
