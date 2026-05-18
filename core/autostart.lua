local globals = require("globals")


hl.on("hyprland.start", function () 
  hl.exec_cmd(globals.terminal)
  hl.exec_cmd("waybar")
  hl.exec_cmd("clipse -listen")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  hl.exec_cmd("sudo nvidia-smi -pm 1")
  --hl.exec_cmd('mpvpaper -o "no-audio --loop-file" ALL ')
  hl.exec_cmd('gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"')
  hl.exec_cmd('gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3"')
end)

