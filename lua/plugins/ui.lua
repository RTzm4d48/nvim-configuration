-- ui.lua

-- Logo en texto ASCII
local logo = [[
 /$$$$$$$  /$$$$$$$$                         /$$   /$$       /$$ /$$   /$$  /$$$$$$ 
| $$__  $$|__  $$__/                        | $$  | $$      | $$| $$  | $$ /$$__  $$
| $$  \ $$   | $$    /$$$$$$$$ /$$$$$$/$$$$ | $$  | $$  /$$$$$$$| $$  | $$| $$  \ $$
| $$$$$$$/   | $$   |____ /$$/| $$_  $$_  $$| $$$$$$$$ /$$__  $$| $$$$$$$$|  $$$$$$/
| $$__  $$   | $$      /$$$$/ | $$ \ $$ \ $$|_____  $$| $$  | $$|_____  $$ >$$__  $$
| $$  \ $$   | $$     /$$__/  | $$ | $$ | $$      | $$| $$  | $$      | $$| $$  \ $$
| $$  | $$   | $$    /$$$$$$$$| $$ | $$ | $$      | $$|  $$$$$$$      | $$|  $$$$$$/
|__/  |__/   |__/   |________/|__/ |__/ |__/      |__/ \_______/      |__/ \______/ 
]]

-- Función para mostrar el logo
local function show_logo()
    vim.api.nvim_echo({{logo, "Normal"}}, false, {})
end

-- Ejecutar la función al iniciar Neovim
vim.api.nvim_create_autocmd("VimEnter", {
    callback = show_logo
})
