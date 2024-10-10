local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Logo en texto ASCII
dashboard.section.header.val = {
    [[ /$$$$$$$  /$$$$$$$$                         /$$   /$$       /$$ /$$   /$$  /$$$$$$ ]],
    [[| $$__  $$|__  $$__/                        | $$  | $$      | $$| $$  | $$ /$$__  $$]],
    [[| $$  \ $$   | $$    /$$$$$$$$ /$$$$$$/$$$$ | $$  | $$  /$$$$$$$| $$  | $$| $$  \ $$]],
    [[| $$$$$$$/   | $$   |____ /$$/| $$_  $$_  $$| $$$$$$$$ /$$__  $$| $$$$$$$$|  $$$$$$/ ]],
    [[| $$__  $$   | $$      /$$$$/ | $$ \ $$ \ $$|_____  $$| $$  | $$|_____  $$ >$$__  $$]],
    [[| $$  \ $$   | $$     /$$__/  | $$ | $$ | $$      | $$| $$  | $$      | $$| $$  \ $$]],
    [[| $$  | $$   | $$    /$$$$$$$$| $$ | $$ | $$      | $$|  $$$$$$$      | $$|  $$$$$$/]],
    [[|__/  |__/   |__/   |________/|__/ |__/ |__/      |__/ \_______/      |__/ \______/ ]],
}

-- Opciones del menú
dashboard.section.buttons.val = {
    dashboard.button("b", "  Explorer", ":NvimTreeToggle<CR>"), 
    dashboard.button("f", "  Find file", ":Files<CR>"),
    dashboard.button("t", "󰯔  Find text", ":Rg<CR>"),
    dashboard.button("n", "  New file", ":NvimTreeToggle<CR>a"),
    dashboard.button("r", "  Recent files", ":History<CR>"),
    dashboard.button("q", "󱌎  Quit", ":q<CR>"),
}

-- Footer personalizado
dashboard.section.footer.val = "¡War Mode my bro!"

-- Configurar el diseño del dashboard
alpha.setup(dashboard.config)
