{ lib, config, pkgs, ... }:

with lib; {
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
      window_border_radius = 9;
      active_window_border_topmost = "off";
      window_topmost = "off";
      window_shadow = "off";
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
      top_padding = 10;
      bottom_padding = 36;
      left_padding = 10;
      right_padding = 10;
      window_gap = 10;
    };

    extraConfig = ''
      # rules
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

  services.spacebar.enable = true;
  services.spacebar.package = pkgs.spacebar;
  services.spacebar.config = {
    position = "bottom";
    display = "main";
    height = 26;
    title = "on";
    spaces = "on";
    clock = "on";
    power = "on";
    padding_left = 20;
    padding_right = 20;
    spacing_left = 25;
    spacing_right = 15;
    text_font = ''"Hack:Regular:12.0"'';
    icon_font = ''"FiraCode Nerd Font Mono:Retina:12.0"'';
    background_color = "0xff2B2D38";
    foreground_color = "0xffa8a8a8";
    power_icon_color = "0xffcd950c";
    battery_icon_color = "0xffd75f5f";
    dnd_icon_color = "0xffa8a8a8";
    clock_icon_color = "0xffa8a8a8";
    power_icon_strip = " ";
    space_icon = "•";
    space_icon_strip = "1 2 3 4 5 6 7 8 9 10";
    spaces_for_all_displays = "on";
    display_separator = "on";
    display_separator_icon = "";
    space_icon_color = "0xff458588";
    space_icon_color_secondary = "0xff78c4d4";
    space_icon_color_tertiary = "0xfffff9b0";
    clock_icon = "";
    dnd_icon = "";
    clock_format = ''"%d/%m/%y %R"'';
    right_shell = "on";
    right_shell_command = "whoami";
  };
}
