local wezterm = require("wezterm")
local conf = wezterm.config_builder()

-- Appearance
conf.color_scheme = "tokyonight-storm"
conf.default_cursor_style = "SteadyBar"
conf.font = wezterm.font("JetBrainsMono Nerd Font Mono")
conf.window_background_opacity = 0.85
conf.window_frame = { font_size = 12 }

return conf
