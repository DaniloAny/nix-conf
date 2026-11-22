{ config, pkgs, ... }:
{
  programs.mango.enable = true;
  environment.systemPackages = with pkgs; [
	quickshell
	awww
	kitty
	rofi
	firefox
  ];
}
