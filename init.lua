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
