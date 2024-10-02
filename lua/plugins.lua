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
    use 'preservim/nerdtree'
    -- Iconos para NERDTree
    use 'nvim-tree/nvim-web-devicons'

    -- FZF y fzf.vim
    use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end }
    use 'junegunn/fzf.vim'

    -- NERD Commenter para comentar código
    use 'preservim/nerdcommenter'

    -- coc.nvim para autocompletado
    use {'neoclide/coc.nvim', branch = 'release'}
 
end)

dofile(vim.fn.expand("~/.config/nvim/lua/misPlugins_conf/theme.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/misPlugins_conf/lualine.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/misPlugins_conf/fzf.lua"))
