{ pkgs }:
{
  home.packages = [
    # Берем оригинальный пакет firefox и модифицируем его .desktop файл
    (pkgs.davinci-resolve.overrideAttrs (old: {
      desktopItems = [
        (pkgs.makeDesktopItem {
          name = "DaVinci Resolve";
          exec = "__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia davinci-resolve %u";
        })
      ];
    }))
  ];
}