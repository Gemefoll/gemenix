{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;

        modules-left = [
          "niri/workspaces"
          "clock"
        ];

        modules-center = [
          "mpd"
        ];

        modules-right = [
          "network"
          "temperature"
          "backlight"
          "pulseaudio"
          "battery"
          "niri/language"
          "tray"
        ];

        network = {
          interface = "wl*";
          format = "{ifname}";
          format-wifi = "{essid} ({signalStrength}%)";
          format-disconnected = "Disconnected ⚠";
          format-linked = "{ifname} (No IP)";
        };

        clock = {
          interval = 1;
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
          format = "{:%T}";
          format-alt = "{:%Y-%m-%d}";
        };

        "niri/workspaces" = {
          disable-scroll = true;
          all-outputs = true;
        };

        mpd = {
          format = "{artist} - {album} - {title} ({elapsedTime:%M:%S}/{totalTime:%M:%S}) ⸨{songPosition}|{queueLength}⸩";
          format-disconnected = "Disconnected";
          format-stopped = "Stopped";
          unknown-tag = "N/A";
          interval = 5;

          tooltip-format = "MPD (connected)";
          tooltip-format-disconnected = "MPD (disconnected)";
          on-click = "ghostty -e rmpc";
        };

      };
    };
  };
}
