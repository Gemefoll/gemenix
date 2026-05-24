{ pkgs, ... }:

{
  programs.xmcl = {
    enable = true;
    jres = [
      pkgs.jre8
      pkgs.temurin-jre-bin-17
    ];
  };
}
