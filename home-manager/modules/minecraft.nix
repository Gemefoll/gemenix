{ pkgs, ... }:

{
  programs.xmcl = {
    enable = true;
    jres = [
      pkgs.jdk17
      pkgs.jdk25
      pkgs.jre
    ];
  };
}
