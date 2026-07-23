{ pkgs, ... }:
{
  xdg.configFile."niri/config.kdl".source = ./config.kdl;
  xdg.configFile."niri/config.kdl".force = true;
  home.packages = with pkgs; [
    hyprpaper
    xwayland-satellite
  ];
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-gnome
    ];
    config.common.default = [ "gnome" ];
  };
  services.playerctld.enable = true;
}
