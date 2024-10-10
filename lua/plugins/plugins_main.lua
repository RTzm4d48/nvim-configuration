-- Cargar packer.nvim
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'  -- Packer puede gestionarse a sí mismo

    -- Tema Onedark
    use 'navarasu/onedark.nvim'


    -- Instalar lualine.nvim (La linea en donde vemos el nombre de archivo, el modo, entre otros)
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }  -- Iconos opcionales
    }

    -- NERDTree plugin
    --use 'preservim/nerdtree'
    -- Iconos para NERDTree
    --
    use 'kyazdani42/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    -- FZF y fzf.vim
    use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end }
    use 'junegunn/fzf.vim'

    -- NERD Commenter para comentar código
    use 'preservim/nerdcommenter'

    -- coc.nvim para autocompletado
    use {'neoclide/coc.nvim', branch = 'release'}
    
    -- Auto completar y cierre de signos como '[],{},(),""'
    use 'windwp/nvim-autopairs'
    
    -- Agrega + o - cuando agregamos o quitamos una linea
    use 'airblade/vim-gitgutter'
    
    -- Para ver las lineas de indentación
    use 'Yggdroot/indentLine'

    -- Para crear multiples cursores de inserción
    use 'mg979/vim-visual-multi'
    
    -- Para el resaltado de sintaxis (colores en el código)
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Plugin del minimapa
    use 'wfxr/minimap.vim'

    -- Instalar alpha-nvim este plugin nos permite personalizar la pantalla de inicio de Nvim
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }, -- Si quieres iconos
    }
end)

dofile(vim.fn.expand("~/.config/nvim/lua/misPlugins_conf/theme.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/misPlugins_conf/lualine.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/misPlugins_conf/fzf.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/misPlugins_conf/autopairs.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/misPlugins_conf/treesitter.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/misPlugins_conf/minimap.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/misPlugins_conf/nvim-tree.lua"))


--vim.api.nvim_exec([[
  --command! -nargs=* Rg
    --\ call fzf#vim#grep(
    --\   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
    --\   fzf#vim#with_preview(), <bang>0)
--]], false)


--require('spectre').setup({
    --mapping = {
        ---- Mapeo para reemplazar todas las ocurrencias en la selección
        --['ctrl-r'] = 'replace',
        ---- Mapeo para abrir el archivo en la posición encontrada
        --['ctrl-o'] = 'open_file',
        ---- Mapeo para cambiar el directorio de búsqueda
        --['ctrl-d'] = 'change_dir',
    --},
    ---- Otras configuraciones si lo deseas
--}
--
--
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Logo en texto ASCII
dashboard.section.header.val = {
    [[ /$$$$$$$  /$$$$$$$$                         /$$   /$$       /$$ /$$   /$$  /$$$$$$ ]],
    [[| $$__  $$|__  $$__/                        | $$  | $$      | $$| $$  | $$ /$$__  $$]],
    [[| $$  \ $$   | $$    /$$$$$$$$ /$$$$$$/$$$$ | $$  | $$  /$$$$$$$| $$  | $$| $$  \ $$]],
    [[| $$$$$$$/   | $$   |____ /$$/| $$_  $$_  $$| $$$$$$$$ /$$__  $$| $$$$$$$$|  $$$$$$/ ]],
    [[| $$__  $$   | $$      /$$$$/ | $$ \ $$ \ $$|_____  $$| $$  | $$|_____  $$ >$$__  $$]],
    [[| $$  \ $$   | $$     /$$__/  | $$ | $$ | $$      | $$| $$  | $$      | $$| $$  \ $$]],
    [[| $$  | $$   | $$    /$$$$$$$$| $$ | $$ | $$      | $$|  $$$$$$$      | $$|  $$$$$$/]],
    [[|__/  |__/   |__/   |________/|__/ |__/ |__/      |__/ \_______/      |__/ \______/ ]],
}

-- Opciones del menú
dashboard.section.buttons.val = {
    dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
    dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
    dashboard.button("q", "  Quit", ":qa<CR>"),
}

-- Footer personalizado
dashboard.section.footer.val = "Welcome to Neovim"

-- Configurar el diseño del dashboard
alpha.setup(dashboard.config)
