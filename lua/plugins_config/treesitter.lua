
-- cuando Neovim inicia y configura nvim-treesitter con lo básico: instalación de lenguajes y resaltado de sintaxis.
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"javascript", "python", "lua", "html", "css"}, -- Añade otros lenguajes que necesites
    highlight = {
        enable = true,              -- habilitar resaltado de syntax
        additional_vim_regex_highlighting = false,
    },
}

-- Configura Neovim para que use Treesitter en el plegado y desplegado de codigo (ejemplo: plegar y desplegar todo el código de una función)
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
