{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    bun
    nodejs
    eza
    htop
    python3
    postgresql
  ];
}
