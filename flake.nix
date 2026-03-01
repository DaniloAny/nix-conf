{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.11";
    
    hyprland.url = "github:hyprwm/Hyprland";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland"; # Prevents version mismatch.
    };
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
     mods = ./modules;
     userName = "danilo";
    in
    {
      nixosConfigurations.Artemis= nixpkgs.lib.nixosSystem{
        system = "x86_64-linux";
        specialArgs = { inherit inputs mods; };
        modules = [
          ./common
          ./hosts/Artemis/configuration.nix
        ];
      };
    };
}
