local wezterm = require("wezterm")
local conf = wezterm.config_builder()

-- Appearance
conf.color_scheme = "tokyonight-storm"
conf.default_cursor_style = "SteadyBar"
conf.font = wezterm.font("JetBrainsMono Nerd Font Mono")
conf.hide_tab_bar_if_only_one_tab = true
conf.tab_bar_at_bottom = true
conf.tab_max_width = 10000
conf.use_fancy_tab_bar = false
conf.window_background_opacity = 0.85
conf.window_frame = { font_size = 12 }
conf.window_padding = {
    left = "0.2cell",
    right = "0.2cell",
    top = "0.2cell",
    bottom = 0,
}

-- Keys
conf.keys = {
    {
        key = "t",
        mods = "CTRL|SHIFT",
        action = wezterm.action({
            SpawnCommandInNewTab = {
                cwd = wezterm.home_dir,
            },
        }),
    },
}

return conf
