{ config, pkgs, ... }:

{
  services.yabai = {
    enable = true;
    package = pkgs.yabai;
    enableScriptingAddition = true;
    config = {
      focus_follows_mouse = "autoraise";
      mouse_follows_focus = "off";
      window_placement = "second_child";
      window_opacity = "off";
      window_opacity_duration = "0.0";
      window_border = "on";
      window_border_placement = "inset";
      window_border_width = 2;
      window_border_radius = 3;
      active_window_border_topmost = "off";
      window_topmost = "on";
      window_shadow = "float";
      active_window_border_color = "0xff5c7e81";
      normal_window_border_color = "0xff505050";
      insert_window_border_color = "0xffd75f5f";
      active_window_opacity = "1.0";
      normal_window_opacity = "1.0";
      split_ratio = "0.50";
      auto_balance = "on";
      mouse_modifier = "fn";
      mouse_action1 = "move";
      mouse_action2 = "resize";
      layout = "bsp";
      top_padding = 36;
      bottom_padding = 10;
      left_padding = 10;
      right_padding = 10;
      window_gap = 10;
    };

    extraConfig = ''
      yabai -m rule --add app='System Preferences' manage=off
    '';
  };

  services.skhd.enable = true;
  services.skhd.package = pkgs.skhd;
  services.skhd.skhdConfig = ''
    # Moving windows
    alt - h : yabai -m window --focus west
    alt - j : yabai -m window --focus south
    alt - k : yabai -m window --focus north
    alt - l : yabai -m window --focus east

    # Float / Unfloat window
    shift + alt - space : yabai -m window --toggle float --grid 4:4:1:1:2:2

    # Make window fullscreen
    shift + alt - f : yabai -m window --toggle zomm-fullscreen

    # Move Workspace
    shift + alt - 1 : yabai -m window --space 1
    shift + alt - 2 : yabai -m window --space 2
    shift + alt - 3 : yabai -m window --space 3
    shift + alt - 4 : yabai -m window --spcae 4
    shift + alt - 5 : yabai -m window --spcae 5
    shift + alt - 6 : yabai -m window --spcae 6
    shift + alt - 7 : yabai -m window --spcae 7
    shift + alt - 8 : yabai -m window --spcae 8
    shift + alt - 9 : yabai -m window --spcae 9

    SPACEBAR_HEIGHT=$(spacebar -m config height)
    yabai -m config external_bar all:0:$SPACEBAR_HEIGHT

  '';

}
