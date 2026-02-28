{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	freecad
	davinci-resolve
	blender
	obs-studio
  ];
}