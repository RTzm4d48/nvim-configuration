-- KEYMAPS

-- Guardar rápidamente con Control + s
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
-- Salir al modo normal y guardar el archivo con Control + s
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })
-- Salimos al modo normal pegamos texto y volvemos
vim.api.nvim_set_keymap('i', '<C-p>', '<Esc>pa', { noremap = true, silent = true })
-- entrar en mdo seleccionar en modo insert
vim.api.nvim_set_keymap('i', '<C-v>', '<Esc>v', { noremap = true, silent = true })
-- Slir del modo Insert
vim.api.nvim_set_keymap('i', '<C-d>', '<Esc><CR>', { noremap = true, silent = true })

-- Entrar al modo insert con Ctrl + w
--vim.api.nvim_set_keymap('n', '<C-w>', 'i', { noremap = true, silent = true })

-- Salir rápidamente con Control + q
vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-q>', '<Esc>', { noremap = true, silent = true })


-- Para abrir y cerrar el explorador de archivos NERDTree
vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })


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
vim.api.nvim_set_keymap('n', '<Leader>>', '10<C-w>>', { noremap = true, silent = true })   -- Aumentar el tamaño horizontalmente
vim.api.nvim_set_keymap('n', '<Leader><', '10<C-w><', { noremap = true, silent = true })   -- Disminuir el tamaño horizontalmente
vim.api.nvim_set_keymap('n', '<Leader>+', '5<C-w>+', { noremap = true, silent = true })   -- Aumentar el tamaño verticalmente
vim.api.nvim_set_keymap('n', '<Leader>-', '5<C-w>-', { noremap = true, silent = true })   -- Disminuir el tamaño verticalmente


-- Desplazamiento más rápido
vim.api.nvim_set_keymap('n', '<C-j>', '10<C-e>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '10<C-y>', { noremap = true, silent = true })


-- Usa Tab y Shift+Tab para navegar y seleccionar autocompletados de 'coc.nvim'
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', { noremap = true, expr = true, silent = true })
-- Usa Enter para seleccionar la sugerencia en coc.nvim
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "\\<CR>"', { noremap = true, expr = true, silent = true })



-- Mapeos básicos para fzf
-- Buscar archivos
vim.api.nvim_set_keymap('n', '<leader>f', ':Files<CR>', { noremap = true, silent = true })
-- Buscar buffers
vim.api.nvim_set_keymap('n', '<leader>b', ':Buffers<CR>', { noremap = true, silent = true })
-- Buscar en el proyecto (requiere el plugin ripgrep)
vim.api.nvim_set_keymap('n', '<leader>g', ':Rg<CR>', { noremap = true, silent = true })
-- Buscar en el historial de comandos
vim.api.nvim_set_keymap('n', '<leader>h', ':History<CR>', { noremap = true, silent = true })



-- Mapeos para el Ctrl + Z
vim.api.nvim_set_keymap('v', '<C-z>', '"+u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-z>', '"+u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-z>', '<Esc>"+u', { noremap = true, silent = true })



vim.keymap.set("n", "<leader>rn", function() return ":IncRename " .. vim.fn.expand("<cword>") end, { expr = true })


-- Para volver a recargar la configuracion de Nvim desde cualquier parte
vim.api.nvim_set_keymap('n', '<leader>r', ':source ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })

-- Cuando buscamos con '/', '*', '#' se genera un resaltado en las palabras, con esto salimos del resaltado
vim.api.nvim_set_keymap('n', '<leader>n', ':nohlsearch<CR>', { noremap = true, silent = true })

-- Para cambiar una ventana de posición
vim.api.nvim_set_keymap("n", "<leader>w", ":WinShift<CR>", { noremap = true, silent = true })

-- Para maximizar una ventana y tambien para restaurar a su tamaño original
vim.api.nvim_set_keymap("n", "<leader>m", ":MaximizerToggle<CR>", { noremap = true, silent = true })



-- Plegado y desplegado de codigo del plugin 'nvim-treesitter' (Al final no usare estos keymasp por que el 'az' y 'zm' me parecen optimos)
-- vim.api.nvim_set_keymap('n', '<leader>f', 'za', { noremap = true, silent = true }) -- Plegar o desplegar el bloque actual
-- vim.api.nvim_set_keymap('n', '<leader>F', 'zM', { noremap = true, silent = true }) -- Plegar todo
-- vim.api.nvim_set_keymap('n', '<leader>O', 'zR', { noremap = true, silent = true }) -- Desplegar todo
-- vim.api.nvim_set_keymap('n', '<leader>o', 'zo', { noremap = true, silent = true }) -- Desplegar un nivel (NO FUNSUIONA)
-- vim.api.nvim_set_keymap('n', '<leader>c', 'zc', { noremap = true, silent = true }) -- Plegar un nivel (NO FUNSUIONA)

-- NOTE: COPILOT DE GITHUB

-- Desactiva la asignación de tecla predeterminada de Copilot
vim.g.copilot_no_tab_map = true

-- Asigna Ctrl + j para aceptar sugerencias de Copilot y es 'CTRL' + 'ENTER'
vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { expr = true, silent = true })

-- NOTE: PARA EL LEGADO DE LAS CARPETAS DEL EXPLORADOR DE ARCHIVOS
vim.keymap.set('n', '<leader>tc', function()
  require('nvim-tree.api').tree.collapse_all()
end, { desc = "Plegar todas las carpetas en Nvim-Tree" })
