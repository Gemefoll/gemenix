{ pkgs, ... }:

{
  programs.fish.enable = true;

  programs.fish.shellAliases = {
    vpnon = "sudo awg-quick up ~/amnezia/NetherlAWG3408.conf";
    vpnoff = "sudo awg-quick down ~/amnezia/NetherlAWG3408.conf";
    hm = "home-manager switch --flake ~/gemenix";
    run = "g++ $argv -DLOCAL -o main && ./main";
  };
}