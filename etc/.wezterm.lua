local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

-- INFO:  ui screen
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 19
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.65
config.macos_window_background_blur = 10
config.window_close_confirmation = "NeverPrompt"

-- INFO: actions
config.skip_close_confirmation_for_processes_named = {
	"bash",
	"sh",
	"zsh",
	"fish",
	"tmux",
	"nu",
	"cmd.exe",
	"pwsh.exe",
	"powershell.exe",
	"wezterm",
	"nvim",
}

--INFO key-map
config.keys = {
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
}
return config
