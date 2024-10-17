-- THEME ONEDARK
vim.cmd('syntax on')           -- Habilitar sintaxis
vim.opt.termguicolors = true   -- Habilitar colores en terminal


-- Activar el tema Onedark
require('onedark').setup {
    style = 'warm' -- Puedes elegir entre 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
}
require('onedark').load()
