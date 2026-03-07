{ pkgs, config, ... }:
{
 # enable openssh
  services.openssh = {
    enable = true;
    allowSFTP = true;
  };
}