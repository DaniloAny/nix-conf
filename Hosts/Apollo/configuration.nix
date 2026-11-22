{ mod, ... }:
{
  imports = [
	./hardware-configuration.nix
	./pkgs.nix
	"${mod}/env/wm.nix"
  ];

  system.stateVersion = "26.05";

  networking.hostName = "Apollo";

}
