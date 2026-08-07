{ pkgs, ... }:
{
  home.packages = with pkgs; [
    font-awesome
  ];

  services.hyprpaper.enable = true;
  programs.ghostty.enable = true;

  
  stylix = {
    enable = true;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";

    targets = {
      fish.enable = false;
      obsidian.vaultNames = [ "pf2_windblown" ];
    };

    cursor = {
      name = "DMZ-Black";
      size = 24;
      package = pkgs.vanilla-dmz;
    };

    image = ../../wallpaper.png;

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
