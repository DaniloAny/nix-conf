{ pkgs, inputs, ... }:

{
   users.users.danilo = {
    isNormalUser = true;
    description = "Main user";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}