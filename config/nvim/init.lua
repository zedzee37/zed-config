require("config.lazy")
require("config.remap")

vim.diagnostic.config({
    virtual_text = true,
	virtual_lines = false
})

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth = 8
vim.opt.expandtab = false
vim.opt.wrap = false
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldtext = "v:lua.vim.treesitter.foldtext()"
vim.opt.foldlevelstart = 99

-- godot stuff
local pipepath = vim.fn.stdpath("cache") .. "/server.pipe"
if not vim.loop.fs_stat(pipepath) then
  vim.fn.serverstart(pipepath)
end

vim.g.have_nerd_font = true

vim.lsp.enable({
	"clangd",
	"basedpyright",
	"rust_analyzer",
	"zls",
	"gopls",
	"gdscript",
	"csharp_ls",
})

vim.lsp.config("basedpyright", {
	settings = {
		basedpyright = {
			analysis = {
				typeCheckingMode = "off",
			},
		},
	},
})
