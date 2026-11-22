{ pkgs, ... }:
{
  programs.fish = {
	enable = true;
  };
  users.users.danilo.shell = pkgs.fish;
}
