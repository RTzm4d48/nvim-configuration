-- Cargar packer.nvim
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'  -- Packer puede gestionarse a sí mismo

    -- Tema Onedark
    -- use 'navarasu/onedark.nvim'
    -- use 'sainnhe/everforest'
    
    -- use 'kdheepak/dark_flat.nvim'
    use 'ricardoraposo/gruvbox-minor.nvim'


    -- Instalar lualine.nvim (La linea en donde vemos el nombre de archivo, el modo, entre otros)
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }  -- Iconos opcionales
    }

    use 'kyazdani42/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    -- FZF y fzf.vim
    use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end }
    use 'junegunn/fzf.vim'

    -- coc.nvim para autocompletado
    use {'neoclide/coc.nvim', branch = 'release'}
    
    -- Auto completar y cierre de signos como '[],{},(),""'
    use 'windwp/nvim-autopairs'
    
    -- Agrega + o - cuando agregamos o quitamos una linea
    use 'airblade/vim-gitgutter'
    
    -- Para ver las lineas de indentación
    use 'Yggdroot/indentLine'

    -- Para el resaltado de sintaxis (colores en el código)
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    
    dofile(vim.fn.expand("~/.config/nvim/lua/ui.lua"))(use)  -- Configuraciones de insterfaz de ususario
    
    use 'psliwka/vim-smoothie'

    -- NOTE: PARA CREAR MULTIPLES CURSORES DE INSERCIÓN

    use 'terryma/vim-multiple-cursors'


    --Aún falta configurar, es para renombrar todas las palabras iguales.
    use {
      'smjonas/inc-rename.nvim',
      config = function()
        require("inc_rename").setup()
      end
    }

    -- Este plugin es muy bueno para mover ventanas.
    use 'sindrets/winshift.nvim'

    -- Para maximizar y restaurar una ventana a su tamaño original
    use 'szw/vim-maximizer'

    -- To painter comentary
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("plugins_config.todo-comments")
        end
    }

    -- NOTE: Para los colores como '#e67e22' o red, etc

    use 'norcalli/nvim-colorizer.lua'
    use 'ap/vim-css-color'

    -- NOTE: Para comentar código. (lo explico en cedema)

    use {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup {
          --pre_hook = require('ts_context_commentstring.intement_nvim').create_pre_hook(),
        }
      end,
    }

    -- NOTE: Genera complementos de código personalizados

    use {
        'L3MON4D3/LuaSnip',
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    }

    -- NOTE: INSTALAMOS GITHUB COPILOT

    use {
        "github/copilot.vim",
        config = function()
        vim.g.copilot_no_tab_map = true  -- Si prefieres deshabilitar la asignación predeterminada de la tecla Tab
        end
    }
end)

-- TODO: PLugins Configurations
dofile(vim.fn.expand("~/.config/nvim/lua/plugins_config/theme.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/plugins_config/lualine.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/plugins_config/fzf.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/plugins_config/autopairs.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/plugins_config/treesitter.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/plugins_config/minimap.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/plugins_config/nvim-tree.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/plugins_config/alpha-nvim.lua"))
dofile(vim.fn.expand("~/.config/nvim/lua/plugins_config/nvim-colorizer.lua"))
require('plugins_config.luasnip')

-- TODO: MIS SNIPPETS PERSONALIZADOS
require('my-snippets.my-snippets-react')
