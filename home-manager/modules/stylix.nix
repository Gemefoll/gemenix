{ pkgs, inputs, ... }:
{
  imports = [ inputs.stylix.homeModules.stylix ];
  stylix = {
    enable = true;
    polarity = "dark";
    image = ./../../wallpaper.jpg;
  };
}
