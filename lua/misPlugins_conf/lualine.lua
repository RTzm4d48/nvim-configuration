-- LUALINE
require('lualine').setup {
  options = {
    theme = 'onedark',        -- El theme
    icons_enabled = true,     -- Habilitar iconos
    section_separators = '',  -- Separadores opcionales
    component_separators = ''
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'}, -- 'diff' y 'diagnostics' mostrarán iconos si están disponibles
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
}
