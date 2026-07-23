{ user, ... } :
{
  services.linux-wallpaperengine = {
    enable = true;

    assetsPath = "/home/${user}/.local/share/Steam/steamapps/common/wallpaper_engine/assets";
    wallpapers = [
      {
        wallpaperId = "3582809467";
        monitor = "eDP-1";
        scaling = "stretch";
      }
    ];
  };
}
