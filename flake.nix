{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    mathkit = {
      url = "github:Gemefoll/1c-mathkit-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    aagl = {
      url = "github:ezKEa/aagl-gtk-on-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      stylix,
      aagl,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      user = "gemefoll";
    in
    {

      nixosConfigurations.gemenix = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit user inputs;
        };
        modules = [
          ./nixos/configuration.nix
          {
            imports = [ aagl.nixosModules.default ];
            programs.sleepy-launcher.enable = true;
          }
        ];
      };

      homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        extraSpecialArgs = {
          inherit inputs user;
        };

        modules = [
          stylix.homeModules.stylix
          ./home-manager/home.nix
          ./ops.nix
          ./conf.nix
        ];

      };
    };
}
