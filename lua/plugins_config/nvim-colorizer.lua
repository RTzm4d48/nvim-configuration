require'colorizer'.setup({
  '*'; -- Habilita para todos los archivos
}, {
  RGB      = true;  -- Soporta #RGB
  RRGGBB   = true;  -- Soporta #RRGGBB
  names    = true; -- Desactiva los nombres de colores como "blue"
  RRGGBBAA = true;  -- Soporta #RRGGBBAA
  rgb_fn   = true;  -- Soporta funciones CSS como rgb() y rgba()
  hsl_fn   = true;  -- Soporta funciones CSS como hsl() y hsla()
  css      = true;  -- Soporta todos los colores CSS
  css_fn   = true;  -- Soporta funciones CSS como rgb() y hsl()
  --mode     = 'foreground'; -- Coloriza el texto mismo, no el fondoa
})
--
--
--
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,  -- Activa el resaltado basado en regex
  },
  ensure_installed = { "css", "html", "javascript", "lua" },  -- Instala los parsers necesarios
}
