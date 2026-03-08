{ pmod, smod, usr, ... }:
{
  imports = [
    # system Modules
    "${smod}/boot.nix"
    "${smod}/shell.nix"
    "${smod}/GPU.nix"
    "${smod}/networking.nix"
    "${smod}/sudo-rs.nix"
    "${smod}/tailscale.nix"
    "${smod}/fonts.nix"
    "${smod}/flatpak.nix"
    "${smod}/properties.nix"

    # package Modules
    "${pmod}/terminal.nix"
    "${pmod}/git.nix"
    "${pmod}/hyprland.nix"
    "${pmod}/davinci.nix"
    "${pmod}/vscodium.nix"
    "${pmod}/file-browser.nix"
    "${pmod}/browser.nix"
    "${pmod}/ssh.nix"
    "${pmod}/matrixcord.nix"

    ./hardware-configuration.nix
  ];

  networking.hostName = "Artemis";

  system.stateVersion = "25.11";
}