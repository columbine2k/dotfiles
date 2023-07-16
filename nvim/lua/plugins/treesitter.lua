-- 语法高亮
return {
	{
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	dependencies = { 'HiPhish/nvim-ts-rainbow2' },
	config = function()
		require('nvim-treesitter.configs').setup ({
			ensure_installed = {
				"vim",
				"bash",
				"lua",
				"typescript",
				"markdown",
				"markdown_inline",
				"javascript",
				"css",
				"scss",
				"html",
				"python",
				"tsx",
				"json",
				"yaml",
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			rainbow = {
				enable = true,
				query = 'rainbow-parens',
				strategy = require('ts-rainbow').strategy.global,
			},
		})
		end
	}
}