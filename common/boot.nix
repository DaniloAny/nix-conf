{pkgs, inputs, config, mod, ... }:
{
  boot.loader = {
    systemd-boot.enable = false;
    limine ={
        enable = true;
        maxGenerations = 5;
        efiSupport = true;
        style = {
          wallpapers = [
          ];
        };
    };
  };
}