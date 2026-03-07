{ ... }:
{

  networking = {
    useDHCP = false;

    interfaces.enp5s0.ipv4.addresses = [{
      address = "192.168.0.30";
      prefixLength = 24;
    }];
    defaultGateway = "192.168.0.1";
    interfaces.enp5s0.useDHCP = false;
    nameservers = ["192.168.0.69" "1.1.1.1"];
  };
}