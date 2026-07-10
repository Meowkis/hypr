local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})



hl.window_rule({
    name = "xwayland-video-bridge-fixes",

    match = {
        class = "xwaylandvideobridge",
    },

    no_initial_focus = true,
    no_focus = true,
    no_anim = true,
    no_blur = true,

    max_size = "1 1",
    opacity = 0.0,
})


hl.window_rule({
    name = "vs",

    match = {
        class = ".*codium.*"
    },
    float = true
})

--hyprctl dispatch exec "[workspace special silent] /home/meowkis/.local/share/Steam/steamapps/common/projectM/projectMSDL"

--telegram fix media
hl.window_rule({
    match = {
        class = "com.ayugram.desktop",
        title = "Media viewer"
    },
    float = true,
})


hl.window_rule({
    match = {
        class = "org.pulseaudio.pavucontrol",
        title = "Volume Control"
    },
    float = true,
    move = {"1112", "53"},
    size = {"784", "462"}
})


hl.window_rule({
    match = {
        class = "org.pulseaudio.pavucontrol",
        title = "Volume Control"
    },
    float = true,
    move = {"1112", "53"},
    size = {"784", "462"}
})

hl.window_rule({
    match = {
        class = "AmneziaVPN",
    },
    float = true,
    move = {"735", "207"},
    size = {"380", "680"}
})


