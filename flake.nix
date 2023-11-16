{
  description = "Nix Darwin";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    darwin.url = "github:lnl7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, darwin }@inputs: {
    darwinConfigurations.beast = darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      modules = [
        home-manager.darwinModules.home-manager
        ({ config, pkgs, lib, ... }: {
          nixpkgs = {
            config = { allowUnfree = true; };
            system = "aarch64-darwin";
          };

          nix.nixPath = { nixpkgs = "${inputs.nixpkgs}"; };

          users.users.ms = {
            home = "/Users/ms";
            shell = pkgs.zsh;
          };

          home-manager.useGlobalPkgs = true;
          home-manager.users.ms = {
            imports = [ ./home ];
            home.stateVersion = "23.11";
          };
        })
        ./system
      ];
    };
  };
}
