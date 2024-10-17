-- ui.lua
return function(use)

    -- Instalar alpha-nvim este plugin nos permite personalizar la pantalla de inicio de Nvim
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }, -- Si quiremos iconos
    }
 
    -- Plugin con su configuracion. Diseño flotante para el cuadro de comandos.
    --dofile(vim.fn.expand("~/.config/nvim/lua/plugins/misPlugins_conf/noice.lua"))(use)
    

    use {
        'echasnovski/mini.animate',
        version = false,  -- Usa la versión estable más reciente
        config = function()
        require('mini.animate').setup({
          cursor = {
            enable = true,  -- Habilita animación del cursor
            timing = require('mini.animate').gen_timing.linear({ duration = 10 })  -- Ajusta la duración de la animación
          },
          scroll = {
            enable = false,  -- Habilita animación de desplazamiento
            -- Cambiar 'smooth' por 'linear' o 'cubic'
            timing = require('mini.animate').gen_timing.cubic({ duration = 0 })  -- Ajusta la duración del scroll
          }
        })
        end
    }

end



