{pkgs, config, ... }:
{
  environment.systemPackages = with pkgs; [
    rustdesk-flutter #program for accessing remote desktops
  ];
}