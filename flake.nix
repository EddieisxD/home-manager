rec {
  description = "Home Manager configuration of addy";

  nixConfig = {
    substituters = [
      "https://cache.nixos.org"
      "https://nix-community.cachix.org"
      "https://devenv.cachix.org"
    ];
    trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw="
    ];
  };

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-flatpak.url = "github:gmodena/nix-flatpak";
    vscode-extensions.url = "github:nix-community/nix-vscode-extensions";
  };

  outputs =
  { nixpkgs, home-manager, ... }@input:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {

    homeConfigurations."addy" = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;

    # Specify your home configuration modules here, for example,
    # the path to your home.nix.
      modules = [ ./home.nix ];

    # Optionally use extraSpecialArgs
    # to pass through arguments to home.nix
      extraSpecialArgs = {
        nix-flatpak = input.nix-flatpak;
        vscode-extensions = input.vscode-extensions;
      };
    };
  };
}
