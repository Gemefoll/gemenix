{
  pkgs,
  user,
  ...
}:

{
  programs.git.settings = {
    user.name = "Gemefoll";
    user.email = "egor.fefilov.v.2009@gmail.com";
  };

  home.username = user;
  home.homeDirectory = "/home/${user}";

  home.packages = with pkgs; [

  ];

  myAliases = {
    von = "sudo awg-quick up ~/amnezia/NetherlAWG3408.conf";
    voff = "sudo awg-quick down ~/amnezia/NetherlAWG3408.conf";
    hm = "home-manager switch --flake ~/gemenix";
    run = "g++ $argv -DLOCAL -o main && ./main";
  };
}
