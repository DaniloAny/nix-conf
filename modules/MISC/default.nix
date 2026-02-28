{ pkgs, inputs,  ... }:

{
  environment.systemPackages = with pkgs; [
  libreoffice-still
  nautilus
  tauon
  element-desktop

  # system packages
  wayland
  flatpak
  mpv
  easyeffects
  ];


}
