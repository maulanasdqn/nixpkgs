{ pkgs, ... }: {
  services.spacebar.enable = true;
  services.spacebar.package = pkgs.spacebar;
  services.spacebar.config = {
    position = "top";
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
  };
}
