{ pkgs,  ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      platformio.platformio-vscode-ide
      bbenoist.nix
      ms-vscode.cpptools
    ];
  };
}