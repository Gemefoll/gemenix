{ pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;

        modules-left = [
          "hyprland/workspaces"
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
          "hyprland/language"
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

        "hyprland/workspaces" = {
          disable-scroll = true;
          all-outputs = true;

          persistent-workspaces = {
            "*" = [
              1
              2
              3
              4
              5
            ];
          };
        };

        mpd = {
          format = "{artist} - {album} - {title} ({elapsedTime:%M:%S}/{totalTime:%M:%S}) ⸨{songPosition}|{queueLength}⸩";
          format-disconnected = "Disconnected ";
          format-stopped = "Stopped ";
          unknown-tag = "N/A";
          interval = 5;

          tooltip-format = "MPD (connected)";
          tooltip-format-disconnected = "MPD (disconnected)";
        };

      };
    };
  };
}
