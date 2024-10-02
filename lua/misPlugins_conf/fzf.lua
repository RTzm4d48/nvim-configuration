-- Configuración de fzf
vim.g.fzf_layout = { down = '~40%' }  -- Abrir fzf ocupando el 40% de la pantalla inferior
vim.g.fzf_colors = {
  fg =      {'fg', 'Normal'},
  bg =      {'bg', 'Normal'},
  hl =      {'fg', 'Comment'},
  ['fg+'] = {'fg', 'CursorLine', 'CursorColumn', 'Normal'},
  ['bg+'] = {'bg', 'CursorLine', 'CursorColumn'},
  ['hl+'] = {'fg', 'Statement'},
  info =    {'fg', 'PreProc'},
  border =  {'fg', 'Ignore'},
  prompt =  {'fg', 'Conditional'},
  pointer = {'fg', 'Exception'},
  marker =  {'fg', 'Keyword'},
  spinner = {'fg', 'Label'},
  header =  {'fg', 'Comment'}
}
