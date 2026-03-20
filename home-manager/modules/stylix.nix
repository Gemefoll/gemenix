{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    font-awesome
  ];

  stylix = {
    enable = true;
    polarity = "dark";

    targets = {
      fish.enable = false;
    };

    cursor = {
      name = "DMZ-Black";
      size = 24;
      package = pkgs.vanilla-dmz;
    };

    image = pkgs.fetchurl {
      url = "https://4kwallpapers.com/images/wallpapers/frierens-staff-3840x2160-20067.jpg";
      hash = "sha256-+c61EjkIzVNB+dOv5GPBSfiGe59jPUjl3alVh7UGlE0=";
    };

    fonts = {
      monospace = {
        package = pkgs.jetbrains-mono;
        name = "JetBrainsMono NF";
      };
      # serif = config.stylix.fonts.monospace;
      sansSerif = config.stylix.fonts.monospace;
      emoji = {
        name = "Noto Color Emoji";
        package = pkgs.noto-fonts-color-emoji;
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
