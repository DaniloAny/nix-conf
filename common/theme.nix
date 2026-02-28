{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		adwaita-icon-theme
		papirus-icon-theme
		nwg-look
	];

  fonts.packages = with pkgs; [
    jetbrains-mono
    font-awesome
  ];
}