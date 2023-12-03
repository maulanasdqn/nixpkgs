{ pkgs, ... }: {

  programs.tmux.enable = true;
  programs.tmux.clock24 = true;
  programs.tmux.plugins = with pkgs.tmuxPlugins; [
    sensible
    yank
    {
      plugin = gruvbox;
      extraConfig = ''
        set -g mouse on
      '';
    }
  ];

}
