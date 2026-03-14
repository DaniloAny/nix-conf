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
    "${smod}/audio.nix"
    "${smod}/ly.nix"

    # package Modules
    "${pmod}/krita.nix"
    "${pmod}/terminal.nix"
    "${pmod}/git.nix"
    "${pmod}/hyprland.nix"
    "${pmod}/davinci.nix"
    "${pmod}/vscodium.nix"
    "${pmod}/file-browser.nix"
    "${pmod}/browser.nix"
    "${pmod}/ssh.nix"
    "${pmod}/matrixcord.nix"
    "${pmod}/steam.nix"
    "${pmod}/fastfetch.nix"
    "${pmod}/virtualbox.nix"

    ./hardware-configuration.nix
  ];

  networking.hostName = "Artemis";

  system.stateVersion = "25.11";
}