--------------------------------------------------
--------------------------------------------------
-- | | | |_   _ _ __  _ __| | __ _ _ __   __| | --
-- | |_| | | | | '_ \| '__| |/ _` | '_ \ / _` | --
-- |  _  | |_| | |_) | |  | | (_| | | | | (_| | --
-- |_| |_|\__, | .__/|_|  |_|\__,_|_| |_|\__,_| --
--        |___/|_|                              --
--------------------------------------------------
-------------github.com/Pseudozoid----------------


------------------
---- MONITORS ----
------------------
hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@60",
    position = "1366x0",
    scale    = 1.25,
})

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1366x768@59.79",
    position = "0x0",
    scale    = 1,
})


----------------------
---- WORKSPACES ----
----------------------
hl.workspace_rule({ workspace = "1",  monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "2",  monitor = "eDP-1",    default = true })
hl.workspace_rule({ workspace = "3",  monitor = "eDP-1",    default = true })
hl.workspace_rule({ workspace = "4",  monitor = "eDP-1",    default = true })
hl.workspace_rule({ workspace = "5",  monitor = "eDP-1",    default = true })
hl.workspace_rule({ workspace = "6",  monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "7",  monitor = "eDP-1",    default = true })
hl.workspace_rule({ workspace = "8",  monitor = "eDP-1",    default = true })
hl.workspace_rule({ workspace = "9",  monitor = "eDP-1",    default = true })
hl.workspace_rule({ workspace = "10", monitor = "eDP-1",    default = true })


---------------------
---- MY PROGRAMS ----
---------------------
local terminal    = "kitty"
local fileManager = "nemo"


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
hl.env("XCURSOR_SIZE", "24")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")


-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("waybar")
    hl.exec_cmd("playerctld daemon")
    hl.exec_cmd("xremap ~/.config/xremap/config.yml")
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)


-----------------------
---- LOOK AND FEEL ----
-----------------------
hl.config({
    xwayland = {
        force_zero_scaling = true,
    },

    general = {
        gaps_in  = 4,
        gaps_out = 8,

        border_size = 0,

        col = {
            active_border   = "rgba(151818aa)",
            inactive_border = "rgba(595959aa)",
        },

        layout           = "dwindle",
        allow_tearing    = false,
        resize_on_border = true,
    },

    decoration = {
        rounding = 7,

        blur = {
            enabled = true,
            size    = 3,
            passes  = 1,
        },
    },

    animations = {
        enabled = true,
    },

    misc = {
        force_default_wallpaper = 0,    
        disable_hyprland_logo   = true,
    },

    cursor = {
        no_hardware_cursors = 1,
    },
})

-- Animations
hl.curve("myBezier", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } })

hl.animation({ leaf = "windows",     enabled = true, speed = 7,  bezier = "myBezier" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 7,  bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "border",      enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 8,  bezier = "default" })
hl.animation({ leaf = "fade",        enabled = true, speed = 7,  bezier = "default" })
hl.animation({ leaf = "workspaces",  enabled = true, speed = 6,  bezier = "default" })

-- Layouts
hl.config({
    dwindle = {
        preserve_split = true,
    },
    master = {
        new_status = "master",
    },
})


---------------
---- INPUT ----
---------------
hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = -0.3, 
        accel_profile = "flat",

        touchpad = {
            natural_scroll      = true,
            clickfinger_behavior = true,
            tap_to_click        = true,
            tap_button_map      = "lrm",
        },
    },
})

hl.device({
    name = "razer-razer-deathadder-essential",
    accel_profile = "flat",
})


---------------------
---- KEYBINDINGS ----
---------------------
local mainMod = "SUPER"

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(mainMod .. " + TAB", hl.dsp.exec_cmd("rofi -show window"))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())             -- dwindle
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"))
hl.bind(mainMod .. " + SHIFT + Print", hl.dsp.exec_cmd("grim -l 0"))
hl.bind(mainMod .. " + period", hl.dsp.exec_cmd("rofimoji -a type -s ask"))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + SHIFT + T", hl.dsp.exec_cmd("~/programming/scripts/hyprsunset.sh"))
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exec_cmd("~/programming/scripts/lockin.sh"))

hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,            hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key,    hl.dsp.window.move({ workspace = i, follow = true }))
    hl.bind(mainMod .. " + CTRL + " .. key,     hl.dsp.window.move({ workspace = i, follow = false }))
end

hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.move({ direction = "down" }))

hl.bind("ALT + R", hl.dsp.submap("resize"))
hl.define_submap("resize", function()
    hl.bind("l", hl.dsp.window.resize({ x = 10,  y = 0,   relative = true }), { repeating = true })
    hl.bind("h", hl.dsp.window.resize({ x = -10, y = 0,   relative = true }), { repeating = true })
    hl.bind("k", hl.dsp.window.resize({ x = 0,   y = -10, relative = true }), { repeating = true })
    hl.bind("j", hl.dsp.window.resize({ x = 0,   y = 10,  relative = true }), { repeating = true })

    hl.bind("escape", hl.dsp.submap("reset"))
end)

hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"))
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"))

hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl set -e 5%+"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set -e 5%-"))


--------------------
--- WINDOW RULES ---
--------------------
hl.window_rule({
    name  = "kitty-no-fullscreen-requests",
    match = { class = "kitty" },
    suppress_event = "fullscreen maximize",
})
