{
  inputs = {
    # Системный nixpkgs (для NixOS)
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    # Home Manager (отдельный input)
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    # Конфигурация NixOS (система)
    nixosConfigurations.gemenix = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        /etc/nixos/configuration.nix
        # Здесь НЕТ home-manager! Система о нем не знает
      ];
    };

    # Конфигурация Home Manager (пользователь)
    homeConfigurations."gemefoll" = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux; # Версия пакетов
      
      # Модули Home Manager
      modules = [
        ~/.config/home-manager/home.nix
      ];
    };
  };
}