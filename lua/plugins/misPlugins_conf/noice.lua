return function(use)
use {
    "folke/noice.nvim",
    requires = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
    config = function()
        local status_ok, noice = pcall(require, "noice")
        if not status_ok then
            return
        end

        noice.setup({
            cmdline = {
                view = "cmdline_popup",
                format = {
                    cmdline = {
                        pattern = "^:",
                        icon = "",
                        lang = "vim",
                    },
                },
            },
            views = {
                cmdline_popup = {
                    position = {
                        row = 5,
                        col = "50%",
                    },
                    size = {
                        width = 60,
                        height = "auto",
                    },
                },
            },
            messages = {
                view = "mini",
            },
        })
    end,
}

end
