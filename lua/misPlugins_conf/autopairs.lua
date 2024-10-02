require('nvim-autopairs').setup{}

-- Integración con coc.nvim
vim.g.coc_global_extensions = { 'coc-pairs' }

-- O usa esta configuración para habilitar 'nvim-autopairs' junto con coc.nvim
local npairs = require('nvim-autopairs')

npairs.setup{
  check_ts = true,  -- si usas árboles de sintaxis (treesitter)
  fast_wrap = {},
}

local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')

-- Inserta pareja de símbolos automáticamente sin interferir con coc.nvim
_G.MUtils= {}

MUtils.completion_confirm=function()
    if vim.fn["coc#pum#visible"]() ~= 0 then
        return vim.fn["coc#_select_confirm"]()
    else
        return npairs.esc("<CR>")
    end
end

remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})
