{ ... }:
{
  boot.loader.limine = {
	enable = true;
	efiSupport = true;
  };
  boot.loader.systemd-boot.enable = false;
}
