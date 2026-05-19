{ config, ... }:

{
  programs.nushell.extraConfig = ''
    mkdir ($nu.data-dir | path join "vendor/autoload")
    starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
  '';

  programs.nushell.shellAliases = config.myAliases;
}
