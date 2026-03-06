{ pkgs, ... }:
let
  src = pkgs.fetchurl {
    url = "https://4kwallpapers.com/images/wallpapers/frierens-staff-3840x2160-20067.jpg";
    hash = "sha256-+c61EjkIzVNB+dOv5GPBSfiGe59jPUjl3alVh7UGlE0=";
  };
in
{
  services.wpaperd.enable = true;
  services.wpaperd.settings = {
    eDP-1 = {
      path = src;
    };
  };
}
