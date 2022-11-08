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
  -- font = wezterm.font("PragmataProMonoLiga Nerd Font", {weight="Regular", stretch="Normal", style="Normal"}),
  -- font = wezterm.font("PragmataPro Mono Liga", {weight="Regular", stretch="Normal", style="Normal"}),
  -- font = wezterm.font("PragmataPro Liga", {weight="Light", stretch="Normal", style="Normal"}),
  -- font = wezterm.font("Iosevka Term Curly Slab", {weight="Regular", stretch="Normal", style="Normal"}),
  -- font = wezterm.font("Victor Mono", {weight="Medium", stretch="Normal", style="Normal"}),
  font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Regular", stretch = "Normal", style = "Normal" }),
  -- font = wezterm.font("Input", {weight="Regular", stretch="SemiCondensed", style="Normal"}),
  -- font = wezterm.font("Input Mono Compressed", {weight="Regular", stretch="ExtraCondensed", style="Normal"}),
  -- font = wezterm.font("Input Mono Narrow", {weight="Regular", stretch="ExtraCondensed", style="Normal"}),
  -- font = wezterm.font("Inconsolata Nerd Font", {weight="Regular", stretch="Normal", style="Normal"}),
  -- font = wezterm.font("CPMono_v07", {weight=305, stretch="Normal", style="Normal"}),
  -- font = wezterm.font("Iosevka Term", {weight="Light", stretch="Normal", style="Normal"}),
  font_size = 30.0,
  -- font_antialias = "Subpixel",
  hide_tab_bar_if_only_one_tab = true,
  color_scheme = "IR_Black",
  -- color_scheme = "Sakura",
  -- color_scheme = "Belafonte Night",
  -- color_scheme = "Aci (Gogh)",
  -- color_scheme = "Atelier Forest Light (base16)",
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
  -- window_close_confirmation = "NeverPrompt",
  animation_fps = 1,
  cursor_blink_ease_in = 'Constant',
  cursor_blink_ease_out = 'Constant',
  -- window_decorations = "NONE",
  initial_rows = 25,
  initial_cols = 120,
  tab_bar_at_bottom = true,
}
