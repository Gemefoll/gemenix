{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "../../../wallpaper.jpg"
      ];
      wallpaper = [
        # By display
        #"DP-2,~/wallpapers/wallpaper2.jpg"
        # By default/fallback
        "../../../wallpaper.jpg"
      ];
    };
  };
}
