hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 8,
		border_size = 0,
		resize_on_border = true,

		col = {
			active_border = "rgba(c061ff99)",
			inactive_border = "rgba(00000022)",
		},
	},

	group = {
		col = {
			border_active = "rgba(c061ff99)",
			border_inactive = "rgba(00000022)",
			border_locked_active = "rgba(c061ffbb)",
			border_locked_inactive = "rgba(00000044)",
		},
	},

	decoration = {
		rounding = 0,

		active_opacity = 1.00,
		inactive_opacity = 0.90,
		fullscreen_opacity = 1.00,

		shadow = {
			enabled = true,
		},

		blur = {
			enabled = true,
			size = 8,
			passes = 2,
			ignore_opacity = false,
			contrast = 1.50,
			new_optimizations = true,
			noise = 0.008,
		},
	},

	master = {
		new_status = "master",
	},

	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
	},
})
