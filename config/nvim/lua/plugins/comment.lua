return {
    'numToStr/Comment.nvim',
	config = function()
		require('Comment').setup({
			ignore = '^$',
			toggler = {
				line = '<C-/>',
			},
			opleader = {
				line = '<C-/>',
			},
		})
	end
}
