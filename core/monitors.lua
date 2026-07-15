--[[
hl.monitor({
  output = "SUNSHINE",
  mode = "1920x1080@120",
  position = "0x0",
  scale = 1,
})

hl.monitor({
  output = "DP-1",
  mode = "1920x1080@60",
  position = "1920x0",
  scale = 1,
})

hl.workspace_rule({
  workspace = "1",
  monitor = "SUNSHINE",
  default = true,
})

hl.workspace_rule({
  workspace = "2",
  monitor = "DP-1",
  default = true,
})

hl.on("hyprland.start", function()
  hl.exec_cmd("sh -c 'sleep 2; xrandr --output SUNSHINE --primary'")
end)
]]



hl.monitor({
  output = "DP-2",
  mode = "1920x1080@60",
  position = "0x0",
  scale = 1,
})