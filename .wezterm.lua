local wezterm = require 'wezterm';

wezterm.on(
  'format-tab-title',
  function(tab, tabs, panes, config, hover, max_width)
    if tab.is_active then
      return {
        { Background = { Color = '#25003e' } },
        { Text = '    ' .. tab.active_pane.title .. '    ' },
      }
    else
      return {
        { Background = { Color = 'black' } },
        { Text = '    ' .. tab.active_pane.title .. '    ' },
      }
    end
  end
)

return {
  font = wezterm.font("PragmataPro Mono Liga", {weight="Regular", stretch="Normal", style="Normal"}),
  font_size = 22.0,
  hide_tab_bar_if_only_one_tab = true,
  color_scheme = "IR_Black",
  native_macos_fullscreen_mode = true,
  bold_brightens_ansi_colors = false,
  audible_bell = "Disabled",
  keys = {
    { key = 'C', mods = 'CMD', action = wezterm.action.Copy },
    { key = 'V', mods = 'CMD', action = wezterm.action.Paste },
    {
      key = 'f',
      mods = 'SHIFT|CTRL',
      action = wezterm.action.ToggleFullScreen,
    },
  },
  window_frame = {
    font_size = 15.0,
    active_titlebar_bg = '#333333',
    inactive_titlebar_bg = '#333333',
  },
  default_cwd = wezterm.home_dir,
  animation_fps = 1,
  cursor_blink_ease_in = 'Constant',
  cursor_blink_ease_out = 'Constant',
  initial_rows = 25,
  initial_cols = 120,
  tab_bar_at_bottom = true,
}
