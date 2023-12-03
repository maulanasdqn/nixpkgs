{ pkgs, ... }:

{
  home.packages = with pkgs; [ bun nodejs eza htop python3 postgresql ];
}
