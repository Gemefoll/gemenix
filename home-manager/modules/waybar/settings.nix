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
          "hyprland/window"
        ];
        modules-right = [
          "network"
          "cpu"
          "memory"
          "temperature"
          "backlight"
          "pulseaudio"
          "battery"
          "keyboard-state"
          "hyprland/language"
          "tray"
        ];
        keyboard-state = {
          numlock = true;
          capslock = true;
          format = "{name} {icon}";
          format-icons = {
            "locked" = "🔒";
            "unlocked" = "🔓";
          };
        };
        cpu = {
          format = "cpu: {usage}%";
        };
        memory = {
          format = "mem: {}%";
        };

        network = {
          tooltip = true;
          format = "{ifname}";
          format-wifi = "{icon}";
          tooltip-format = "Network: <big><b>{essid}</b></big>\nSignal strength: <b>{signaldBm}dBm ({signalStrength}%)</b>\nFrequency: <b>{frequency}MHz</b>\nInterface: <b>{ifname}</b>\nIP: <b>{ipaddr}/{cidr}</b>\nGateway: <b>{gwaddr}</b>\nNetmask: <b>{netmask}</b>";
          format-linked = "{ifname} (No IP)";
          interval = 2;
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
      };
    };
  };
}
