local wezterm = require 'wezterm'
return {
  -- Colors
  color_scheme_dirs = {"$HOME/.config/wezterm/colors"},
  color_scheme = "duskfox",

  -- Fonts
  font = wezterm.font_with_fallback({
    'VictorMono Nerd Font',
    'Zapf Dingbats',
    'Apple Color Emoji'
  }),
  font_size = 18,

  -- Window
  window_decorations = "RESIZE",
  skip_close_confirmation_for_processes_named = {
    "bash", "sh", "zsh", "fish", "tmux"
  },
  hide_tab_bar_if_only_one_tab = true,
  window_padding = {
    left = "0.5cell",
    right = "0.5cell",
    top = "0.15cell",
    bottom = "0cell",
  },
  adjust_window_size_when_changing_font_size = false,
  use_fancy_tab_bar = false,
  colors = {
    -- NOTE: Fancy Tab Has it's own config
    -- NOTE: Should Dynamically pull values so it updates with themes
    tab_bar = {
      background = "#232136",
      active_tab = {
        bg_color = "#47407d",
        fg_color = "#e0def4"
      },
      inactive_tab = {
        bg_color = "#393552",
        fg_color = "#e0def4"
      },
      inactive_tab_hover = {
        bg_color = "#3b3052",
        fg_color = "#909090",
        italic = true,
      },
      new_tab = {
        bg_color = "#1b1032",
        fg_color = "#808080",
      },
      new_tab_hover = {
        bg_color = "#3b3052",
        fg_color = "#909090",
        italic = true,
      },
    },
  },

  -- Cursor
  default_cursor_style = "BlinkingBar",
  cursor_blink_rate = 400,
  cursor_blink_ease_in = {CubicBezier={0.0, 0.0, 0.0, 0.0}},
  cursor_blink_ease_out = {CubicBezier={0.0, 0.0, 0.0, 0.0}},

  -- Key Mappings
  keys = {
    -- {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
    -- ALT
    -- TODO: It may be better to change this to a string for better control in other programs
    {key="LeftArrow", mods="OPT", action={SendKey={key="b", mods="ALT"}}},
    {key="RightArrow", mods="OPT", action={SendKey={key="f", mods="ALT"}}},

    -- CMD
    -- TODO: CMD+SHIFT+UP/DOWN
    {key="LeftArrow", mods="CMD", action=wezterm.action{SendString="☀︎"}},
    {key="LeftArrow", mods="CMD|SHIFT", action=wezterm.action{SendString="☍"}},
    {key="RightArrow", mods="CMD", action=wezterm.action{SendString="☼"}},
    {key="RightArrow", mods="CMD|SHIFT", action=wezterm.action{SendString="☌"}},
    {key="UpArrow", mods="CMD", action=wezterm.action{SendString="☔︎"}},
    {key="DownArrow", mods="CMD", action=wezterm.action{SendString="☂︎"}},
    {key="a", mods="CMD", action=wezterm.action{SendString="♗"}},
    {key="z", mods="CMD", action=wezterm.action{SendString="☾"}},
    {key="z", mods="CMD|SHIFT", action=wezterm.action{SendString="☁︎"}},
    {key="Backspace", mods="CMD", action=wezterm.action{SendString="☽"}},
    {key="/", mods="CMD", action=wezterm.action{SendString="♇"}},
    {key="k", mods="CMD", action=wezterm.action{ClearScrollback="ScrollbackAndViewport"}},

  }
}
    -- Set Env Variables for Spawned Programs
    --set_environment_variables = {
      --test = "bones"
  --}
