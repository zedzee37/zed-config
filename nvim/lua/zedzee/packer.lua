vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use("theprimeagen/harpoon")
	use("mbbill/undotree")	
	use("tpope/vim-fugitive")

	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use('hrsh7th/nvim-cmp')

    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
    use("tiagovla/tokyodark.nvim", { as = "tokyodark" })
	use 'RaafatTurki/hex.nvim'
    use 'ziglang/zig.vim'

    use { "elentok/format-on-save.nvim" }
    use { "habamax/vim-godot", event = "VimEnter" }
end)
