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


hl.window_rule({
    match = {
        class = "projectMSDL"
    },

    no_focus = true,
    float = true,
    pin = true,
    opaque = false,
    no_shadow = true,
    no_blur = true,
    rounding = 0,
    render_unfocused = true,
    no_initial_focus = true
})



--telegram fix media
hl.window_rule({
    match = {
        class = "com.ayugram.desktop",
        title = "Media viewer"
    },
    float = true,
})