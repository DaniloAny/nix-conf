{
  description = "System flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };
  };

  outputs = { self, nixpkgs, ... }@inputs: 
    let
      mod = ./modules;
    in
    {
      nixosConfigurations.Apollo= nixpkgs.lib.nixosSystem{
        system = "x86_64-linux";
        specialArgs = { inherit inputs mod; };
        modules = [
          ./Hosts/Apollo/configuration.nix
          ./users.nix
		  ./common
        ];
      };
    };
}
