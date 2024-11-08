vim.cmd('syntax on')           -- Habilitar sintaxis
vim.opt.termguicolors = true   -- Habilitar colores en terminal


-- TODO: THEME ONEDARK
--
require('onedark').setup {
    style = 'darker' -- Puedes elegir entre 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
}
require('onedark').load()

-- TODO: THEME EVERFORREST
--
-- vim.o.background = 'light' -- Opciones: 'dark', 'light'
-- vim.g.everforest_background = 'soft'  -- Opciones: 'hard', 'medium', 'soft'
-- vim.g.everforest_enable_italic = 1
-- vim.g.everforest_diagnostic_text_highlight = 1
--
-- -- Activar el tema
-- vim.cmd('colorscheme everforest')
