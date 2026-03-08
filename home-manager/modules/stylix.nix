{ pkgs, config, ... }:
{
  stylix = {
    enable = true;
    polarity = "dark";

    image = pkgs.fetchurl {
      url = "https://4kwallpapers.com/images/wallpapers/frierens-staff-3840x2160-20067.jpg";
      hash = "sha256-+c61EjkIzVNB+dOv5GPBSfiGe59jPUjl3alVh7UGlE0=";
    };

    fonts = {
      monospace = {
        package = pkgs.jetbrains-mono;
        name = "JetBrains Mono";
      };
      serif = config.stylix.fonts.monospace;
      sansSerif = config.stylix.fonts.monospace;
      emoji = config.stylix.fonts.monospace;
    };
  };
}
