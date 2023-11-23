{ config, lib, pkgs, ... }:

{
  environment.shellInit = ''
    eval "$(${config.homebrew.brewPrefix}/brew shellenv)"
  '';

  system.activationScripts.preUserActivation.text = ''
    if [ ! -f ${config.homebrew.brewPrefix}/brew ]; then
      ${pkgs.bash}/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
  '';

  homebrew.enable = true;
  homebrew.onActivation.cleanup = "zap";
  homebrew.global.brewfile = true;
  homebrew.brews = [ "z" ];

  homebrew.casks = [
    "firefox"
    "google-chrome"
    "raycast"
    "insomnia"
    "figma"
    "discord"
    "slack"
    "iterm2"
    "zoom"
    "mysqlworkbench"
    "orbstack"
    "rectangle"
    "keepingyouawake"
    "postman"
    "min"
    "obs"
  ];

}
