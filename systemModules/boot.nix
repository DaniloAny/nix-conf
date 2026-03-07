{pkgs, inputs, config, mod, ... }:
{
  boot.loader = {
    systemd-boot.enable = false;
    limine ={
        enable = true;
        maxGenerations = 20;
        efiSupport = true;
        style = {
          wallpapers = [
          ];
        };
    };
  };
}