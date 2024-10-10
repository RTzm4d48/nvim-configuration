require'nvim-tree'.setup {}

require('nvim-tree').setup {
  diagnostics = {
    enable = true, -- Habilitar diagnóstico de archivos
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    dotfiles = false, -- Desactiva el filtro que oculta los archivos que empiezan con un punto (.)
    custom = { '.git$', 'node_modules$', '.cache' }, -- Ocultar otros directorios
  },
  git = {
    enable = true, -- Habilitar soporte para git
    ignore = false, -- No ignorar archivos git
  },
  -- Agrega más opciones según necesites
}
