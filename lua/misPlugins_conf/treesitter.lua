
-- cuando Neovim inicia y configura nvim-treesitter con lo básico: instalación de lenguajes y resaltado de sintaxis.
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"javascript", "python", "lua", "html", "css"}, -- Añade otros lenguajes que necesites
    highlight = {
        enable = true,              -- habilitar resaltado de syntax
        additional_vim_regex_highlighting = false,
    },
}
