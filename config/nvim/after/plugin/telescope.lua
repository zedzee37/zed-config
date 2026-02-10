local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>pg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>s', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>i', builtin.lsp_implementations, {})
vim.keymap.set('n', '<leader>u', builtin.lsp_references, {})

