{ pkgs, config, ... }:
{
  users.users.danilo.shell = pkgs.fish;
  programs.fish = {
    enable = true; # enables fish shell
    shellAliases = {
      nrs="sudo nixos-rebuild switch --flake ~/nix-conf/"; # rebuilds the system configuration.
      code="codium"; # makes it so i can launch vscodium in the terminal via the 'code' command.
    };
  };
}