{ pkgs, ... }:

{
  programs.xmcl = {
    enable = true;
    jres = [
      pkgs.jre
    ];
  };
}
