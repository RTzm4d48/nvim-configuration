-- KEYMAPS

-- Guardar rápidamente con Control + s
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
-- Salir al modo normal y guardar el archivo con Control + s
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })
-- Slir del modo Insert
vim.api.nvim_set_keymap('i', '<C-d>', '<Esc><CR>', { noremap = true, silent = true })

-- Entrar al modo insert con Ctrl + w
vim.api.nvim_set_keymap('n', '<C-w>', 'i', { noremap = true, silent = true })

-- Salir rápidamente con Control + q
vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap = true, silent = true })



-- Para abrir y cerrar el explorador de archivos NERDTree
vim.api.nvim_set_keymap('n', '<C-b>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })




-- Mover línea hacia arriba y abajo con Alt + direccionales en modo Normal
vim.api.nvim_set_keymap('n', '<A-Down>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-Up>', ':m .-2<CR>==', { noremap = true, silent = true })

-- Mover línea hacia arriba y abajo con Alt + direccionales en modo Visual
vim.api.nvim_set_keymap('v', '<A-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })



-- Navegación entre ventanas
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })


-- Redimensionar ventanas
vim.api.nvim_set_keymap('n', '<Leader>>', '10<C-w>>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader><', '10<C-w><', { noremap = true, silent = true })


-- Desplazamiento más rápido
vim.api.nvim_set_keymap('n', '<C-j>', '10<C-e>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '10<C-y>', { noremap = true, silent = true })


-- Usa Tab y Shift+Tab para navegar y seleccionar autocompletados de 'coc.nvim'
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', { noremap = true, expr = true, silent = true })
-- Usa Enter para seleccionar la sugerencia en coc.nvim
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "\\<CR>"', { noremap = true, expr = true, silent = true })
