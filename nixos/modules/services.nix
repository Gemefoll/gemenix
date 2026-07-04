{ pkgs, ... }: {
  services.udev.packages = with pkgs; [
    qmk-udev-rules
  ];

  services.jellyfin = {
    enable = true;
    user = "gemefoll";
  };

  services.displayManager.ly.enable = true;

  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
    wireplumber.enable = true;
    wireplumber.extraConfig."10-bluez" = {
      "monitor.bluez.properties" = {
        "bluez5.codecs" = [
          "sbc"
          "sbc_xq"
          "aac"
          "ldac"
          "aptx"
          "aptx_hd"
        ];
      };
    };
  };

  services.blueman.enable = true;
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings = {
      General = {
        Experimental = true;
        FastConnectable = true;
      };
      Policy = {
        AutoEnable = true;
      };
    };
  };

  services.gvfs.enable = true;

  services.tailscale.enable = true;

  virtualisation.docker.enable = true;
}
