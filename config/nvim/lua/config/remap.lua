
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":Dirbuf<CR>")
vim.keymap.set("n", "<leader>pl", "o<Esc>pk")
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "o<Esc>k")
vim.keymap.set("n", "<leader>P", "<leader>dp")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "P", [["+p]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set(
	"n",
	"<leader>go",
	"oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)


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

vim.keymap.set({"n", "v"}, "<C-T>", function()
	vim.cmd("tab split")
end)
vim.keymap.set({"n", "v"}, "<A-1>", "1gt")
vim.keymap.set({"n", "v"}, "<A-2>", "2gt")
vim.keymap.set({"n", "v"}, "<A-3>", "3gt")
vim.keymap.set({"n", "v"}, "<A-4>", "4gt")
vim.keymap.set({"n", "v"}, "<A-5>", "5gt")
vim.keymap.set({"n", "v"}, "<A-6>", "6gt")
vim.keymap.set({"n", "v"}, "<A-7>", "7gt")
vim.keymap.set({"n", "v"}, "<A-8>", "8gt")
vim.keymap.set({"n", "v"}, "<A-9>", "9gt")

vim.keymap.set("n", "<leader>eh", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>ep", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>en", vim.diagnostic.goto_prev)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-b>", "<C-b>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

local term_window = -1
local prev_win = 0
local term_buf = -1
local term_win = -1

local function toggle_terminal()
    if vim.api.nvim_win_is_valid(term_win) then
        vim.api.nvim_win_hide(term_win)
        return
    end

    if not vim.api.nvim_buf_is_valid(term_buf) then
        term_buf = vim.api.nvim_create_buf(false, true)
    end

    term_win = vim.api.nvim_open_win(term_buf, true, {
        split = 'below',
        height = 15,
    })

    if vim.bo[term_buf].buftype ~= 'terminal' then
        vim.cmd("terminal")
    end

    vim.cmd("startinsert")
end

vim.keymap.set('n', '<A-t>', toggle_terminal) 
vim.keymap.set('t', '<A-t>', toggle_terminal)
vim.keymap.set('t', '<C-t>', [[<C-\><C-n>]], { noremap = true, silent = true })
