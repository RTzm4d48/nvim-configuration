-- luasnip-config.lua
local ls = require("luasnip")

-- Configuración básica
ls.config.set_config {
    history = true,
    updateevents = "TextChanged,TextChangedI",
}

-- Teclas para expandir snippets
vim.keymap.set({"i", "s"}, "<Tab>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, {silent = true})

vim.keymap.set({"i", "s"}, "<S-Tab>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, {silent = true})

-- Para recargar automáticamente los snippets
vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/lua/luasnip-config.lua<CR>")

