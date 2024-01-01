{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bun
    nodejs
    eza
    htop
    postgresql
    fd
    android-tools
  ];
}
