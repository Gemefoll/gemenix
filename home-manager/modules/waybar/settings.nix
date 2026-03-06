{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      height = 30;
      output = "eDP-1";
      modules-left = [
        "hyprland/workspaces"
        "hyprland/mode"
      ];
      modules-center = [
        "hyprland/window"
      ];
      modules-right = [
        "temperature"
      ];

      "hyprland/workspaces" = {
        disable-scroll = true;
        all-outputs = true;
      };
    };
  };
}
