{
  programs.fish.enable = true;

  programs.fish.shellAliases = {
    von = "sudo awg-quick up ~/amnezia/NetherlAWG3408.conf";
    voff = "sudo awg-quick down ~/amnezia/NetherlAWG3408.conf";
    hm = "home-manager switch --flake ~/gemenix";
    run = "g++ $argv -DLOCAL -o main && ./main";
  };
}