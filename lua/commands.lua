-- commands.lua

-- TODO: PARA VER LA RUTA EL ARCHIVO QUE ESTOY EDITANDO

-- Comando para mostrar la ruta relativa
vim.api.nvim_create_user_command(
  'Relativepath',
  function()
    print(vim.fn.expand('%'))
  end,
  { desc = "Muestra la ruta relativa del archivo actual" }
)

-- Comando para mostrar la ruta completa
vim.api.nvim_create_user_command(
  'Completepath',
  function()
    print(vim.fn.expand('%:p'))
  end,
  { desc = "Muestra la ruta completa del archivo actual" }
)

-- Comando para copiar la ruta relativa al portapapeles
vim.api.nvim_create_user_command(
  'Copyrelativepath',
  function()
    vim.fn.setreg('+', vim.fn.expand('%'))
    print("Ruta relativa copiada al portapapeles")
  end,
  { desc = "Copia la ruta relativa al portapapeles" }
)

-- Comando para copiar la ruta completa al portapapeles
vim.api.nvim_create_user_command(
  'Copycompletepath',
  function()
    vim.fn.setreg('+', vim.fn.expand('%:p'))
    print("Ruta completa copiada al portapapeles")
  end,
  { desc = "Copia la ruta completa al portapapeles" }
)
