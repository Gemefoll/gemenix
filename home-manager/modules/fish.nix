{
  programs.fish.enable = true;

  programs.fish.shellAliases = {
    hm = "home-manager switch --flake ~/gemenix";
    run = "g++ $argv -DLOCAL -o main && ./main";
  };

  programs.fish.interactiveShellInit = ''
    starship init fish | source
  '';
}
