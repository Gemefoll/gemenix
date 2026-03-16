{ pkgs, ... }:

{
  programs.fish.enable = true;

  programs.fish.shellAliases = {
    ll = "ls -la";
    vpnon = "sudo awg-quick up ~/amnezia/EstoniaAWG5299.conf";
    vpnoff = "sudo awg-quick down ~/amnezia/EstoniaAWG5299.conf";
    hm = "home-manager switch --flake ~/gemenix";
  };
}