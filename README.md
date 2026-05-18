# Hyprland Lua Config

Minimal modular configuration for Hyprland using new native Lua support.

This setup is structured to keep configuration clean, split into logical modules, and easy to extend.

---

## 📁 Structure

```
hyprland.lua        # entrypoint (main config loader)
globals.lua         # global variables / shared state

binds/              # keybind system
  apps.lua
  media.lua
  windows.lua
  workspaces.lua

core/               # core system configuration
  autostart.lua
  env.lua
  input.lua
  misc.lua
  monitors.lua
  init.lua

ui/                 # visual & UI behavior
  animations.lua
  appearance.lua
  layouts.lua
  rules.lua
  init.lua

scripts/
  kbl.sh            # language switch notification
```

---

## ⚙️ Entry point

Main configuration file is `hyprland.lua`.

It loads modules in this order:

```lua
require("core")
require("ui")
require("binds")
```

---

## 🚀 Installation

```bash
git clone https://github.com/Meowkis/hypr.git ~/.config/hypr
```

Restart Hyprland or reload configuration.

---

## 🧠 Design

- Fully modular Lua-based config  
- Separation of core / UI / binds logic  
- Minimal coupling between modules  
- Native Hyprland Lua integration  
- No external dependencies  

---

## 🔧 Changes & Fixes

- Applied latest Hyprland wiki fixes  
- Fixed window rule inconsistencies  
- Fixed Ayugram media viewer floating behavior  
- General stability improvements  

---

## 🪶 Philosophy

Keep it:
- predictable  
- modular  
- minimal  
- easy to debug  

No unnecessary abstraction layers.
