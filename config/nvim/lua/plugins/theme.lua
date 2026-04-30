return {
	'https://github.com/vague-theme/vague.nvim',
	config = function()
		require("vague").setup({
			transparent = true,
			italic = false,
			colors = {
				bg = '#141415',
				inactiveBg = '#1c1c24',
				fg = '#cdcdcd',
				floatBorder = '#878787',
				line = '#252530',
				comment = '#606079',
				builtin = '#b4d4cf',
				func = '#c48282',
				string = '#e8b589',
				number = '#e0a363',
				property = '#c3c3d5',
				constant = '#aeaed1',
				parameter = '#bb9dbd',
				visual = '#333738',
				error = '#d8647e',
				warning = '#f3be7c',
				hint = '#7e98e8',
				operator = '#90a0b5',
				keyword = '#6e94b2',
				type = '#9bb4bc',
				search = '#405065',
				plus = '#7fa563',
				delta = '#f3be7c',
			},
		})
		vim.cmd.colorscheme("vague")
	end
}
-- return {
--     "tiagovla/tokyodark.nvim",
--     opts = {
--         -- custom options here
--     },
--     config = function(_, opts)
--         require("tokyodark").setup({
-- 			transparent_background = true,
-- 			styles = {
-- 				comments = { italic = false }, -- style for comments
-- 				keywords = { italic = false, }, -- style for keywords
-- 				identifiers = { italic = false }, -- style for identifiers
-- 				functions = { italic = false, }, -- style for functions
-- 				variables = { italic = false }, -- style for variables
-- 			},
-- 			custom_highlights = function(highlights, palette)
-- 				return {
-- 					Identifier = { fg = palette.fg },
-- 					Constant = { fg = palette.fg }
-- 				}
-- 			end
-- 		}) -- calling setup is optional
--         vim.cmd [[colorscheme tokyodark]]
--     end,
-- }
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
-- 	"EdenEast/nightfox.nvim",
-- 	config = function()
-- 		require("nightfox").setup({
-- 			transparent = true,
-- 		})
-- 		vim.cmd.colorscheme("nightfox")
-- 	end
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
-- 				Normal = { bg = "None" },
-- 				ColorColumn = { bg = "None" },
-- 				SignColumn = { bg = "None" },
-- 				Folded = { bg = "None" },
-- 				FoldColumn = { bg = "None" },
-- 				-- CursorLine = { bg = "None" },
-- 				-- CursorColumn = { bg = "None" },
-- 				VertSplit = { bg = "None" },
-- 				NonText = { fg = "#5c6773" }, 
--                 Whitespace = { fg = "#5c6773" },
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

--         -- local bg_color = vim.api.nvim_get_hl(0, { name = "Normal" }).bg
--         -- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = bg_color })
--         -- vim.api.nvim_set_hl(0, "NonText", { bg = bg_color })
-- 	end
-- }
-- return {
-- 	"EdenEast/nightfox.nvim", -- lazy
-- 	config = function()
-- 		require("nightfox").setup({
-- 			transparent = true,
-- 		})
-- 		vim.cmd.colorscheme("nightfox")
-- 	end
-- }
