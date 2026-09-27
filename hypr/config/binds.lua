--------------------------------
-- CachyOS Hyprland Bindings
-- Noctalia + UWSM
--------------------------------

local mainMod = "SUPER"
local noctCall = "noctalia msg "
local launchPrefix = "uwsm app -- "
local ipc = "noctalia msg "

--------------------------------
-- APPLICATIONS
--------------------------------

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(launchPrefix .. TERMINAL))

hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(launchPrefix .. "brave"))

hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd(launchPrefix .. "zen-browser"))

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(launchPrefix .. "Telegram"))

hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(launchPrefix .. TERMINAL .. " -e nvim"))

hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(launchPrefix .. "subl"))

hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd(launchPrefix .. TERMINAL .. " -e yazi"))

hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(launchPrefix .. FILE_MANAGER))

hl.bind(mainMod .. " + C", hl.dsp.exec_cmd(launchPrefix .. "code"))

--------------------------------
-- NOCTALIA
--------------------------------

-- Window switcher
hl.bind(mainMod .. " + Tab", hl.dsp.exec_cmd(noctCall .. "window-switcher"))

-- Launcher
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(noctCall .. "panel-toggle launcher"))

-- Control center
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd(noctCall .. "panel-toggle control-center"))

-- Clipboard
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(noctCall .. "panel-toggle clipboard"))

-- Notifications
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd(noctCall .. "panel-toggle control-center notifications"))

-- Emoji picker
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd(noctCall .. "panel-toggle launcher /emo"))
-- Lock screen
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd(noctCall .. "session lock"))

-- Wallpaper
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd(noctCall .. "panel-toggle wallpaper"))

--------------------------------
-- WINDOW MANAGEMENT
--------------------------------

hl.bind(mainMod .. " + Q", hl.dsp.window.close())

hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen())

hl.bind(mainMod .. " + D", hl.dsp.window.fullscreen({ mode = 1 }))

hl.bind(mainMod .. " + ALT + Space", hl.dsp.window.float({ action = "toggle" }))

--------------------------------
-- VIM STYLE FOCUS
--------------------------------

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))

hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))

hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))

--------------------------------
-- VIM STYLE MOVE WINDOWS
--------------------------------

hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({ direction = "l" }))

hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.move({ direction = "d" }))

hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({ direction = "u" }))

hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "r" }))

--------------------------------
-- WORKSPACES
--------------------------------

for i = 1, NUM_WPM do
	local key = i % 10

	-- switch workspace
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))

	-- move window to workspace
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Workspace navigation

hl.bind(mainMod .. " + CTRL + Right", hl.dsp.focus({ workspace = "m+1" }))

hl.bind(mainMod .. " + CTRL + Left", hl.dsp.focus({ workspace = "m-1" }))

--------------------------------
-- MOUSE WINDOW CONTROL
--------------------------------

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())

hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

--------------------------------
-- MEDIA CONTROLS
--------------------------------

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(noctCall .. "volume-up"), { locked = true, repeating = true })

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(noctCall .. "volume-down"), { locked = true, repeating = true })

hl.bind("XF86AudioMute", hl.dsp.exec_cmd(noctCall .. "volume-mute"), { locked = true })

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(noctCall .. "media toggle"), { locked = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd(noctCall .. "media next"), { locked = true })

hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(noctCall .. "media previous"), { locked = true })

--------------------------------
-- BRIGHTNESS
--------------------------------

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(noctCall .. "brightness-up"), { locked = true, repeating = true })

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(noctCall .. "brightness-down"), { locked = true, repeating = true })

--------------------------------
-- SCREENSHOT
--------------------------------

hl.bind("Print", hl.dsp.exec_cmd(noctCall .. "screenshot-region"))

hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd(noctCall .. "screenshot-fullscreen"))

--------------------------------
-- COLOR PICKER
--------------------------------

hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("hyprpicker -a -n"))

--------------------------------
-- POWER MENU
--------------------------------

hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd(noctCall .. "panel-toggle session"))

--------------------------------
-- arrow key movements
--------------------------------
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))

hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))

hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "right" }))

-- Alt + Tab -> Next window
hl.bind("ALT + Tab", hl.dsp.window.cycle_next())

hl.bind(mainMod .. "+comma", hl.dsp.exec_cmd(ipc .. "settings-toggle"))

hl.bind(mainMod .. " + U", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + SHIFT + U", hl.dsp.layout("togglesplit")) -- dwindle only

-- Resize active window horizontally with mainMod + Ctrl + Left/Right
hl.bind(mainMod .. " + ALT + left", hl.dsp.window.resize({ x = -10, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + right", hl.dsp.window.resize({ x = 10, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + up", hl.dsp.window.resize({ x = 0, y = -10, relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + down", hl.dsp.window.resize({ x = 0, y = 10, relative = true }), { repeating = true })
