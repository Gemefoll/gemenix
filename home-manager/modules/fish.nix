{ pkgs, ... }:

{
  programs.fish.enable = true;

  programs.fish.shellAliases = {
    ll = "ls -la";
    gs = "git status";
    hm = "home-manager switch --flake ~/gemenix";
  };
}