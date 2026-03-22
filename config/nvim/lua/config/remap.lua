local pretty_hover = require("pretty_hover")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":Dirbuf<CR>")
vim.keymap.set("n", "<leader>pl", "o<Esc>pk")
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "o<Esc>k")
vim.keymap.set("n", "<leader>P", "<leader>dp")
vim.keymap.set("n", "K", function()
	pretty_hover.hover()
end)

vim.keymap.set({"n", "v"}, "<C-T>", vim.cmd.tabnew)


vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "P", [["+p]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set(
"n",
"<leader>go",
"oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

-- leave terminal mode
vim.keymap.set('t', '<A-t>', [[<C-\><C-n>]], { noremap = true, silent = true })

local dap = require("dap")

-- Stepping functions
vim.keymap.set('n', '<Up>', dap.step_out, { desc = 'Debug: Step Out' })
vim.keymap.set('n', '<Down>', dap.step_over, { desc = 'Debug: Step Over' })
vim.keymap.set('n', '<Left>', dap.step_back, { desc = 'Debug: Step Back' }) -- Note: Not all debuggers support this
vim.keymap.set('n', '<Right>', dap.step_into, { desc = 'Debug: Step Into' })

vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, { desc = 'Debug: Toggle Breakpoint' })
vim.keymap.set('n', '<leader>c', dap.continue, { desc = 'Debug: Start/Continue' })

local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set({"n", "v"}, "<A-1>", function() harpoon:list():select(1) end)
vim.keymap.set({"n", "v"}, "<A-2>", function() harpoon:list():select(2) end)
vim.keymap.set({"n", "v"}, "<A-3>", function() harpoon:list():select(3) end)
vim.keymap.set({"n", "v"}, "<A-4>", function() harpoon:list():select(4) end)
vim.keymap.set({"n", "v"}, "<A-5>", function() harpoon:list():select(5) end)
vim.keymap.set({"n", "v"}, "<A-6>", function() harpoon:list():select(6) end)
vim.keymap.set({"n", "v"}, "<A-7>", function() harpoon:list():select(7) end)
vim.keymap.set({"n", "v"}, "<A-8>", function() harpoon:list():select(8) end)
vim.keymap.set({"n", "v"}, "<A-9>", function() harpoon:list():select(9) end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>e", vim.snippet.expand)
