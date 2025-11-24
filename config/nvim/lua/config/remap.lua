vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":Dirbuf<CR>")
vim.keymap.set("n", "<leader>pl", "o<Esc>pk")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "o<Esc>k")
vim.keymap.set("n", "<leader>P", "<leader>dp")

vim.keymap.set({"n", "v"}, "<C-T>", vim.cmd.tabnew)

vim.keymap.set({"n", "v"}, "<A-1>", "1gt")
vim.keymap.set({"n", "v"}, "<A-2>", "2gt")
vim.keymap.set({"n", "v"}, "<A-3>", "3gt")
vim.keymap.set({"n", "v"}, "<A-4>", "4gt")
vim.keymap.set({"n", "v"}, "<A-5>", "5gt")
vim.keymap.set({"n", "v"}, "<A-6>", "6gt")
vim.keymap.set({"n", "v"}, "<A-7>", "7gt")
vim.keymap.set({"n", "v"}, "<A-8>", "8gt")
vim.keymap.set({"n", "v"}, "<A-9>", "9gt")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "P", [["+p]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set(
"n",
"<leader>go",
"oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

-- terminal shenanigans


local term_buf = nil

function toggle_term_split()
	if not term_buf or not vim.api.nvim_buf_is_valid(term_buf) then
		vim.cmd("botright split | terminal")
		term_buf = vim.api.nvim_get_current_buf()
		return
	end

	for _, win in ipairs(vim.api.nvim_list_wins()) do
		if vim.api.nvim_win_get_buf(win) == term_buf then
			vim.cmd("hide")
			return
		end
	end

	vim.cmd("botright sbuffer " .. term_buf)
end

vim.keymap.set("n", "<A-t>", toggle_term_split)

-- leave terminal mode
vim.keymap.set('t', '<A-t>', [[<C-\><C-n>]], { noremap = true, silent = true })

