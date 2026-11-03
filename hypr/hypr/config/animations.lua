---------------------------------------------------
--        SIMPLE • VERY SMOOTH • FAST
--   Hyprland Animations (Lua Config)
---------------------------------------------------

-- Define custom bezier curves
hl.curve("smooth", { type = "bezier", points = { { 0.23, 0.72 }, { 0.20, 1.0 } } })
hl.curve("slideSmooth", { type = "bezier", points = { { 0.15, 0.9 }, { 0.15, 1.0 } } })
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })
hl.curve("overshoot", { type = "bezier", points = { { 0.5, 0.9 }, { 0.1, 1.1 } } })

-- Spring curves
hl.curve("easy", { type = "spring", mass = 1, stiffness = 500, dampening = 35 })
hl.curve("rubber", { type = "spring", mass = 1, stiffness = 200, dampening = 15 })

---------------------------------------------------
-- WINDOW ANIMATIONS
---------------------------------------------------
hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 2.25,
	bezier = "smooth",
	style = "slidevert",
})

hl.animation({
	leaf = "windowsIn",
	enabled = true,
	speed = 2.25,
	bezier = "smooth",
	style = "slidevert",
})

hl.animation({
	leaf = "windowsOut",
	enabled = true,
	speed = 2.25,
	bezier = "smooth",
	style = "slidevert",
})

hl.animation({
	leaf = "windowsMove",
	enabled = true,
	speed = 2.25,
	bezier = "smooth",
	style = "slidevert",
})

---------------------------------------------------
-- WORKSPACE ANIMATIONS
---------------------------------------------------
hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 2.35,
	bezier = "smooth",
	style = "slidevert",
})

hl.animation({
	leaf = "specialWorkspaceIn",
	enabled = true,
	speed = 2,
	bezier = "smooth",
	style = "slidevert top",
})

hl.animation({
	leaf = "specialWorkspaceOut",
	enabled = true,
	speed = 2,
	bezier = "smooth",
	style = "slidevert bottom",
})

---------------------------------------------------
-- FADE ANIMATIONS
---------------------------------------------------
hl.animation({
	leaf = "fadeIn",
	enabled = true,
	speed = 2.15,
	bezier = "smooth",
})

hl.animation({
	leaf = "fadeOut",
	enabled = true,
	speed = 2.15,
	bezier = "smooth",
})

hl.animation({
	leaf = "fadeSwitch",
	enabled = true,
	speed = 2.15,
	bezier = "smooth",
})

---------------------------------------------------
-- LAYER ANIMATIONS
---------------------------------------------------
hl.animation({
	leaf = "layers",
	enabled = true,
	speed = 2.15,
	bezier = "smooth",
	style = "popin",
})

hl.animation({
	leaf = "fadeLayers",
	enabled = true,
	speed = 2.15,
	bezier = "smooth",
})

---------------------------------------------------
-- BORDER ANIMATIONS
---------------------------------------------------
hl.animation({
	leaf = "border",
	enabled = true,
	speed = 2.0,
	bezier = "smooth",
})

hl.animation({
	leaf = "borderangle",
	enabled = false,
})

---------------------------------------------------
-- GLOBAL SETTINGS
---------------------------------------------------
-- Enable all animations globally
hl.animation({
	leaf = "global",
	enabled = true,
	speed = 2,
	bezier = "smooth",
})
