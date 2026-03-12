{ pkgs, ...}:
{
  environment.systemPackages = with pkgs; [ 
    davinci-resolve
    ffmpeg_7
    bspwm
  ];
}