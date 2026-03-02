{
  inputs = {
    # Системный nixpkgs (для NixOS)
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    # Home Manager (отдельный input)
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    # Конфигурация NixOS (система)
    nixosConfigurations.gemenix = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./nixos/configuration.nix
      ];
    };

    # Конфигурация Home Manager (пользователь)
    homeConfigurations."gemefoll" = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      extraSpecialArgs = {
        inherit inputs;
      };

      # Модули Home Manager
      modules = [
        ./home-manager/home.nix
      ];
    };
  };
}