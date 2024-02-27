local wezterm = require 'wezterm';
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end
-- wezterm.on(
--   'format-window-title',
--   function(tab, tabs, panes, cnf, hover, max_width)
--     return 'Terminal'
--   end
-- )

wezterm.on(
  'format-tab-title',
  function(tab, tabs, panes, cnf, hover, max_width)
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

config.leader = { key = 'a', mods = 'CTRL' }
config.color_scheme = "IR_Black"
-- config.color_scheme = 'Catppuccin Mocha'
-- config.font = wezterm.font("Inconsolata", {weight="Medium", stretch="Normal", style="Normal"})
config.font = wezterm.font("Inconsolata-g", {weight="Medium", stretch="Normal", style="Normal"})
-- config.font = wezterm.font("JetBrainsMono Nerd Font Mono", {weight="Regular", stretch="Normal", style="Normal"})
-- config.font = wezterm.font("Spleen", {weight="Medium", stretch="UltraCondensed", style="Normal"})
-- config.font = wezterm.font("Monaspace Xenon", {weight="Regular", stretch="Normal", style="Normal"})
-- config.font = wezterm.font("PragmataPro Mono Liga", {weight="Regular", stretch="Normal", style="Normal"})
config.font_size = 18
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true
config.native_macos_fullscreen_mode = true
config.bold_brightens_ansi_colors = true
config.audible_bell = "Disabled"
config.window_frame = {
  font_size = 12.0,
  active_titlebar_bg = '#333333',
  inactive_titlebar_bg = '#333333',
}
-- config.default_prog = {'/Users/sardor/.cargo/bin/nu', '-l'}
config.default_cwd = 'Users/sardor/Projects'
config.window_close_confirmation = "AlwaysPrompt"
config.animation_fps = 1
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'
-- config.window_decorations = "NONE"
config.initial_rows = 25
config.initial_cols = 120
config.tab_bar_at_bottom = true
config.enable_scroll_bar = false
--   keys = {
--     -- { key = 'c', mods = 'CMD', action = wezterm.action.CopyTo },
--     -- { key = 'v', mods = 'CMD', action = wezterm.action.PasteFrom },
--     {
--       key = 'f',
--       mods = 'SHIFT|CTRL',
--       action = wezterm.action.ToggleFullScreen,
--     },
return config
