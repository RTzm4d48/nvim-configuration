-- todo-comments.lua
require("todo-comments").setup {
    -- Configuraciones básicas
    signs = true,  -- Mostrar iconos en la columna de signos
    keywords = {
        TODO = { icon = " ", color = "info" },
        FIX = { icon = " ", color = "error" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning" },
        PERF = { icon = " ", color = "hint" },
        NOTE = { icon = " ", color = "hint" },
    },
    merge_keywords = true, -- Combina las palabras clave personalizadas con las predeterminadas
    
    -- Opciones adicionales
    highlight = {
        before = "", -- Resalta el texto antes de la palabra clave
        keyword = "wide", -- Resalta la palabra clave
        after = "fg", -- Resalta el texto después de la palabra clave
        pattern = [[.*<(KEYWORDS)\s*:]], -- Detecta las palabras clave
    },
    search = {
        command = "rg", -- Usa ripgrep para buscar comentarios
        args = {
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
        },
    },
}
