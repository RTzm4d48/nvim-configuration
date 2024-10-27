-- ~/.config/nvim/lua/my-snippets.lua
local ls = require("luasnip")  -- Importa LuaSnip
local s = ls.snippet           -- Definir un snippet
local t = ls.text_node         -- Crear texto fijo dentro del snippet
local i = ls.insert_node       -- Crear un nodo de inserción (donde escribes)

-- Ejemplo de un snippet básico de React
ls.add_snippets("javascript", {  -- Define el tipo de archivo, aquí React
    s("rafc", {                       -- Snippet se expande con 'rafc'
        t("import React from 'react';"), t({"", "", ""}), -- Línea vacía para separación
        t("export const "), i(1, "Mycomponent"), t(" = () => {"), t({"", "    return ("}),
        t({"", "        <div>"}), t({"", "            <p>"}), i(2, "Mycomponent"), t({"</p>"}), t({"", "        </div>"}), t({"", "    );"}),
        t({"", "};"})  -- Reusa i(1) para el nombre
    }),
})
