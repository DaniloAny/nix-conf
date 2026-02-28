{ pkgs, inputs,  ... }:

{
  environment.systemPackages = with pkgs; [
  discord
  inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default #browser
  ];

  

}