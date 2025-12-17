{ inputs, config, pkgs, ... }:

{
  targets.genericLinux.enable = true;

  home.username = "amireal";
  home.homeDirectory = "/home/amireal";
  home.stateVersion = "25.11";

  imports = [
    ./dotfiles.nix

    stylix.homeModules.stylix
  ];

  home.packages = [
    pkgs.swww
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
