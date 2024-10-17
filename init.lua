-- Keybindings
vim.g.mapleader = " "         -- Leader Key (leader = Space)

-- General Options
require('keymaps')  -- the direction it points is '/lua/keymaps.lua'
require('plugins')  -- the direction it points is '/lua/plugins.lua'

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


-- highlight the current line
vim.opt.cursorline = true
--vim.cmd([[highlight CursorLine guibg=#1bcbff]])  -- To customize the color of the line



--require('packer').startup(function()
  --use 'psliwka/vim-smoothie'
--end)
--
--
vim.opt.signcolumn = "yes" 
