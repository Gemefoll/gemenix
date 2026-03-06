{ pkgs, ... }:
{
  home.packages = with pkgs; [
    font-awesome_4
    jetbrains-mono
  ];

  fonts.fontconfig = {
    enable = true;

    defaultFonts.monospace = [ "JetBrains Mono" ];
    defaultFonts.serif = [ "JetBrains Mono" ];
    defaultFonts.sansSerif = [ "JetBrains Mono" ];
    defaultFonts.emoji = [ "JetBrains Mono" ];
  };
}
