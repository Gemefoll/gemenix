{ user, inputs, ... }: {
  imports = [
    inputs.xmcl.homeModules.xmcl
    inputs.stylix.homeModules.stylix
    ./modules
    ./home-packages.nix
  ];

  home.username = user;
  home.homeDirectory = "/home/${user}";

  home.sessionVariables = { };

  programs.home-manager.enable = true;

  home.stateVersion = "25.11";
}
