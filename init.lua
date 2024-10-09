-- Keybindings
vim.g.mapleader = " "         -- Tecla líder (líder = espacio)

-- Opciones generales
require('keymaps')  -- Si está en ~/.config/nvim/lua/keymaps.lua
require('plugins')

vim.opt.number = true         -- Mostrar números de línea
vim.opt.relativenumber = true -- Números relativos para moverme fácilmente
vim.opt.expandtab = true      -- Convertir tabs a espacios
vim.opt.shiftwidth = 4        -- Indentar con 4 espacios
vim.opt.tabstop = 4           -- Un tab es igual a 4 espacios
vim.opt.smartindent = true    -- Indentado inteligente
vim.opt.termguicolors = true  -- Soporte de colores en terminal
vim.opt.mouse = "a"           -- Habilita el uso del ratón


vim.opt.clipboard = "unnamedplus"

vim.g.NERDTreeShowHidden = 1  -- Mostrar archivos ocultos en NERDTree (por ejemplo nos muestra '.env' o '.gitignore')


-- Cambiamos el color del cursor de insercion y cambiamos a linea el cursor del modo normal.
vim.cmd([[
  highlight Cursor guifg=black guibg=white
  highlight CursorInsert guifg=white guibg=#1bcbff
]])
vim.opt.guicursor = {
    "n-v-c:ver30-Cursor",      -- Línea vertical en modo normal, visual y comando
    "i:ver30-CursorInsert",    -- Línea vertical en modo de inserción (30% de ancho)
}

-- Resaltar la línea actual
vim.opt.cursorline = true
--vim.cmd([[highlight CursorLine guibg=#1bcbff]])  --Para personalizar el color de la linea
