-- ui.lua
return function(use)

    -- Instalar alpha-nvim este plugin nos permite personalizar la pantalla de inicio de Nvim
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }, -- Si quiremos iconos
    }
 
    -- Plugin con su configuracion. Diseño flotante para el cuadro de comandos.
    dofile(vim.fn.expand("~/.config/nvim/lua/plugins/misPlugins_conf/noice.lua"))(use)

end
