-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- Personal bindings ported from the pre-Quattro bindings.conf.
o.bind("SUPER + SHIFT + T", "Activity", { tui = "btop" })
o.bind("SUPER + SHIFT + L", "Slack", { launch = "slack", focus = "slack" })
o.bind("SUPER + SHIFT + I", "Notion", { webapp = "https://www.notion.so" })

hl.unbind("SUPER + SHIFT + E")
o.bind("SUPER + SHIFT + E", "Email", { webapp = "https://outlook.com" })

hl.unbind("SUPER + SHIFT + M")
o.bind("SUPER + SHIFT + M", "Music", { webapp = "https://music.youtube.com/", focus = true })

hl.unbind("SUPER + SHIFT + Y")
o.bind("SUPER + SHIFT + Y", "YouTube", { webapp = "https://youtube.com/", focus = true })

hl.unbind("SUPER + SHIFT + S")
o.bind("SUPER + SHIFT + S", "Simplenote", { webapp = "https://app.simplenote.com" })
