{ pkgs, inputs, user, ... }:
{
  programs.git.settings = {
    user.name = "Gemefoll";
    user.email = "egor.fefilov.v.2009@gmail.com";
  };
  
  home.username = user;
  home.homeDirectory = "/home/${user}";
  programs.fish.shellAliases = {
  };

  home.packages = with pkgs; [

  ];
}
