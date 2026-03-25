{ pkgs, inputs, ... }:
{
  programs.git.settings = {
    user.name = "Gemefoll";
    user.email = "egor.fefilov.v.2009@gmail.com";
  };
  programs.fish.shellAliases = {
  };
  home.packages = with pkgs; [

  ];
}
