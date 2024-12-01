-- todo-comments.lua

vim.cmd [[
    highlight TodoCommentError guifg=#ec7063 gui=bold
    highlight TodoCommentWarning guifg=#f7dc6f gui=bold
    highlight TodoCommentInfo guifg=#3498db gui=bold
    highlight TodoCommentHint guifg=#43667e gui=bold
    highlight TodoCommentStub guifg=#c39bd3 gui=bold
    highlight TodoCommentTest guifg=#ADD8E6 gui=bold
    highlight TodoCommentPerf guifg=#f5b041 gui=bold
]]

require("todo-comments").setup {
    -- Basic Configuration
    signs = true,  -- Mostrar iconos en la columna de signos
    keywords = {
        TODO = { icon = " 󰎞", color = "info" },
        FIX = { icon = " ", color = "error" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning" },
        PERF = { icon = " 󰛨", color = "perf" },
        NOTE = { icon = " ", color = "hint" },
        TEST = { icon = " ", color = "test"},
        STUB = { icon = " 󰘓", color = "stub" }
    },
    merge_keywords = true, -- Combina las palabras clave personalizadas con las predeterminadas
    
    -- Opciones adicionales
    highlight = {
        before = "fg", -- Resalta el texto antes de la palabra clave
        keyword = "wide", -- Resalta la palabra clave
        after = "fg", -- Resalta el texto después de la palabra clave
        pattern = [[.*<(KEYWORDS)\s*:]], -- Detecta las palabras clave
        keyword = "bg", -- Cambia el color de fondo de la palabra clave

    },
    colors = {
        error = { "TodoCommentError" },
        warning = { "TodoCommentWarning" },
        info = { "TodoCommentInfo"},
        perf = { "TodoCommentPerf" },
        hint = { "TodoCommentHint" },
        test = { "TodoCommentTest" },
        stub = { "TodoCommentStub" },
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
