require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "clangd", "basedpyright", "quick_lint_js", "gopls", "zls", "rust_analyzer", "csharp_ls", "cmake", "nim_langserver", "glsl_analyzer", "luau_lsp"}
})

local on_attach = function(_, _)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
    vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
    vim.keymap.set("n", "<leader>e", vim.lsp.buf.hover, {})
end

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup {
    on_attach = on_attach
}
lspconfig.clangd.setup {
    on_attach = on_attach
}
lspconfig.basedpyright.setup {
    on_attach = on_attach
}
lspconfig.quick_lint_js.setup {
    on_attach = on_attach
}
lspconfig.gopls.setup {
    on_attach = on_attach
}
lspconfig.zls.setup {
    on_attach = on_attach
}
lspconfig.rust_analyzer.setup {
    on_attach = on_attach
}
lspconfig.csharp_ls.setup {
    on_attach = on_attach
}
lspconfig.gdscript.setup {
    on_attach = on_attach
}
lspconfig.cmake.setup {
    on_attach = on_attach
}
lspconfig.nim_langserver.setup {
    on_attach = on_attach
}
lspconfig.glsl_analyzer.setup {
    on_attach = on_attach
}
lspconfig.luau_lsp.setup {
    on_attach = on_attach
}

