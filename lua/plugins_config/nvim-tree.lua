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
  view = {
    width = 45, -- El ancho del explorador de archivo
  },
  -- Agrega más opciones según necesites
}
