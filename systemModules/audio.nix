{ connfig, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    pavucontrol
    viber
  ];
}