{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bun
    nodejs
    nodePackages.pnpm
    nodePackages.npm
    nodePackages.yarn
    eza
    htop
    fd
    android-tools
    ripgrep
    luajitPackages.lua-lsp
    vscode
    docker

    (writeScriptBin "kd" ''
      killall -9 Dock
    '')

  ];
}
