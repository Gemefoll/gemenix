{ pkgs, ... }: {
  programs.niri.enable = true;

  programs.steam.enable = true;
  programs.steam.extraCompatPackages = with pkgs; [
    proton-ge-bin
  ];

  programs.fish.enable = true;

  programs.throne =
    let
      pkgs-from-pr = import (fetchTarball {
        url = "https://github.com/NixOS/nixpkgs/archive/0cbdc25b4df6051689052125cb550485f09dfb59.tar.gz";
        sha256 = "sha256:1791gf9cnsfkcfv2dg15yb4y5yb8nj8lzavm3j7a0c7x7h22cq35";
      }) { inherit (pkgs.stdenv.hostPlatform) system; };
    in
    {
      enable = true;
      package = pkgs-from-pr.throne;
      tunMode.enable = true;
    };
}
