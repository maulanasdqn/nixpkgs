{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bun
    nodejs
    eza
    htop
    fd
    android-tools
    ripgrep
    luajitPackages.lua-lsp
    vscode
    docker
  ];
}
