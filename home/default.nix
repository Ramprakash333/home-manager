{ config, pkgs, ... }:

{

  imports = [
    ./programs
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home = {
    username = "rvel";
    homeDirectory = "/Users/rvel";
    stateVersion = "23.11";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}