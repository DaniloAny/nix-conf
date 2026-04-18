{ pkgs, ...}:
{
  environment.systemPackages = with pkgs; [ 
    davinci-resolve
    ffmpeg_7
    orca-slicer
    kdePackages.dolphin
    libreoffice-still
  ];
}