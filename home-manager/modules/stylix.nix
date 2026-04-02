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

    image = ./../../wallpaper.png;

    fonts = {
      monospace = {
        package = pkgs.jetbrains-mono;
        name = "JetBrainsMono NF";
      };

      # sansSerif = {
      #   package = pkgs.nerd-fonts?.override {
      #     fonts = [ "NotoSans" ];
      #   };
      #   name = "NotoSans Nerd Font";
      # };

      # serif = {
      #   package = pkgs.nerdfonts.override {
      #     fonts = [ "NotoSerif" ];
      #   };
      #   name = "NotoSerif Nerd Font";
      # };

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
