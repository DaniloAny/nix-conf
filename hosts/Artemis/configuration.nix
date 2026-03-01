{ mods, ... }:
{
    imports = [
        ./hardware-configuration.nix
        ./devices.nix
        "${mods}/hyprland"
        "${mods}/rdesk"
        "${mods}/terminal"
        "${mods}/creative-tools"
        "${mods}/creative-tools"
        "${mods}/MISC"
        "${mods}/dev-tools"
    ];

    system.stateVersion = "25.11"; 

    networking.hostName = "Artemis";
}
