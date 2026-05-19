{ config, ... }:

{
  programs.fish.enable = true;

  programs.fish.shellAliases = config.myAliases;

  programs.fish.interactiveShellInit = ''
    starship init fish | source
  '';
}
