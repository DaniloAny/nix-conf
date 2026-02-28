{ ... }:

{

  #enable network manager
  networking.networkmanager.enable = true;

  programs.wireshark.enable = true;
  programs.wireshark.dumpcap.enable = true;

  networking = {
    useDHCP = false;

    hostName = "Artemis";

    interfaces.enp5s0.ipv4.addresses = [{
      address = "192.168.0.30";
      prefixLength = 24;
    }];
    defaultGateway = "192.168.0.1";
    interfaces.enp5s0.useDHCP = false;
    nameservers = ["192.168.0.69" "1.1.1.1"];
  };
}