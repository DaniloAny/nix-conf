{ pkgs, ...}:
{
  programs.thunar = {
    enable = true;
    plugins = with pkgs; [
      thunar-volman
      thunar-archive-plugin
    ];
  };

  services.udisks2 = {
    enable = true;
    mountOnMedia = true;
  };
}