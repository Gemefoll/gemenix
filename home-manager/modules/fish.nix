{
  programs.fish.enable = true;

  programs.fish.shellAliases = {
    von = "sudo awg-quick up ~/amnezia/Netherl2AW5461.conf";
    voff = "sudo awg-quick down ~/amnezia/Netherl2AW5461.conf";
    hm = "home-manager switch --flake ~/gemenix";
    run = "g++ $argv -DLOCAL -o main && ./main";
  };

  programs.fish.interactiveShellInit = ''
    starship init fish | source
  '';
}
