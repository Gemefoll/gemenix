{ pkgs, inputs, ... }:
{
  imports = [ inputs.stylix.homeModules.stylix ];
  stylix = {
    enable = true;
    polarity = "dark";
    image = ./../../wallpaper.jpg;
    cursor = {
      name = "DMZ-Black";
      size = 36;
      package = pkgs.vanilla-dmz;
    };

    icons = {
      enable = true;
      package = pkgs.papirus-icon-theme;
      dark = "Papirus-Dark";
      light = "Papirus-Light";
    };
  };
}
