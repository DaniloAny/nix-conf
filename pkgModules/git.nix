{ pkgs, config, ...}:
{
  programs.git = {
    enable = true;
    config = {
      user.name = "DaniloAny";
      user.email = "daniloany@proton.me";
    };
  };
}