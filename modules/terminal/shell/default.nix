{ pkgs, config, ... }:
{
  users.users.danilo.shell = pkgs.fish;
  programs.fish = {
    enable = true; # enables fish shell
    shellAliases = {
      nrs="sudo nixos-rebuild switch --flake ~/conf/"; # rebuilds the system configuration
    };
  };
}