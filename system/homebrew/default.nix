{ config, pkgs, ... }:

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

  homebrew.casks = [
    "raycast"
    "insomnia"
    "figma"
    "discord"
    "slack"
    "zoom"
    "mysqlworkbench"
    "keepingyouawake"
    "postman"
    "obs"
    "android-platform-tools"
  ];

}
