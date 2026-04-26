return {
    "tiagovla/tokyodark.nvim",
    opts = {
        -- custom options here
    },
    config = function(_, opts)
        require("tokyodark").setup({
			transparent_background = true,
			styles = {
				comments = { italic = false }, -- style for comments
				keywords = { italic = false, }, -- style for keywords
				identifiers = { italic = false }, -- style for identifiers
				functions = { italic = false, bold = true }, -- style for functions
				variables = { italic = false }, -- style for variables
			},
			custom_highlights = function(highlights, palette)
				return {
					Identifier = { fg = palette.fg },
					Constant = { fg = palette.fg }
				}
			end
		}) -- calling setup is optional
        vim.cmd [[colorscheme tokyodark]]
    end,
}
-- return {
--   'thimc/gruber-darker.nvim',
--   config = function()
--     require('gruber-darker').setup({
--       -- OPTIONAL
--       transparent = true, -- removes the background
--       -- underline = false, -- disables underline fonts
--       -- bold = false, -- disables bold fonts
--     })
--     vim.cmd.colorscheme('gruber-darker')
--   end,
-- }
-- return {
-- 	'Yazeed1s/minimal.nvim',
-- 	config = function()
-- 		vim.cmd.colorscheme("minimal")
-- 		vim.g.minimal_transparent_background = true
-- 	end
-- }


-- return {
--     "nickkadutskyi/jb.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {},
--     config = function()
--         require("jb").setup({transparent = true})
--         vim.cmd("colorscheme jb")
--     end,
-- }
-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.o.background = "dark"
-- 		vim.cmd([[colorscheme gruvbox]])
-- 		require("gruvbox").setup({
-- 			transparent_mode = true,
-- 		})
-- 	end
-- }
--
-- return {
-- 	"blazkowolf/gruber-darker.nvim",
-- 	config = function()
-- 		vim.cmd.colorscheme("gruber-darker")
-- 	end
-- }
-- return {
--     'behemothbucket/gruber-darker-theme.nvim',
--     priority = 1000,
--     lazy = false,
--     config = function()
--         require('gruber-darker').setup()
--         vim.cmd('colorscheme gruber-darker')
--     end,
-- }
-- return {
--     "Mofiqul/adwaita.nvim",
--     lazy = false,
--     priority = 1000,
--     
--     config = function()
--         vim.g.adwaita_disable_cursorline = true 
--         vim.g.adwaita_transparent = true        
--         vim.cmd('colorscheme adwaita')
--     end
-- }
-- return {
-- 	"Shatur/neovim-ayu",
-- 	config = function()
-- 		require("ayu").setup({
-- 			overrides = {
-- 					
-- 			}
-- 		})
-- 		vim.cmd.colorscheme("ayu")
-- 	end
-- }
--
-- return {
-- 	"nyoom-engineering/oxocarbon.nvim",
-- 	config = function()
-- 		vim.cmd.colorscheme("oxocarbon")
-- 		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- 		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- 	end
-- }
