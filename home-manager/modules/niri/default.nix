{ pkgs, ... } :
{
  xdg.configFile."niri/config.kdl".source = ./config.kdl;
  xdg.configFile."niri/config.kdl".force = true;
  home.packages = with pkgs; [ hyprpaper ];
}