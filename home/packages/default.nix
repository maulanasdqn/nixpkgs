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
    inkscape
    mkcert
    prettierd

    (writeScriptBin "kd" ''
      killall -9 Dock
    '')

    (writeScriptBin "kp" ''
      kill -9 $(lsof -ti:3001)
    '')

  ];
}
