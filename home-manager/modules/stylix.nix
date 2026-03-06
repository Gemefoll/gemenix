{
  pkgs,
  inputs,
  config,
  ...
}:
{
  imports = [ inputs.stylix.homeModules.stylix ];
  stylix.autoEnable = true;
  stylix = {
    enable = true;
    polarity = "dark";
    image = ./../../wallpaper.jpg;
    cursor = {
      name = "DMZ-Black";
      size = 36;
      package = pkgs.vanilla-dmz;
    };

    fonts = {
      emoji = {
        name = "Noto Color Emoji";
        package = pkgs.noto-fonts-color-emoji;
      };

      sizes = {
        terminal = 13;
        applications = 11;
      };
    };

    icons = {
      enable = true;
      package = pkgs.papirus-icon-theme;
      dark = "Papirus-Dark";
      light = "Papirus-Light";
    };
  };
}
