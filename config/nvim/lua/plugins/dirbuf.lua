return {
	"https://github.com/elihunter173/dirbuf.nvim",
	config = function()
		require("dirbuf").setup({
			sort_order = "directories_first"
		})
	end
}
