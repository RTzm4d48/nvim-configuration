require('Comment').setup {
    -- NOTE: Actualizamos la configuración de comment.nvim para que use 'nvim-treesitter' para comentarios inteligentes en 'JSX'.
    pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}
