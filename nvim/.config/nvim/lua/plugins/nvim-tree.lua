-- 文档浏览
return {
	{
		'nvim-tree/nvim-tree.lua',
		dependencies = {
			'nvim-tree/nvim-web-devicons',
			'christoomey/vim-tmux-navigator',
		},
		config = function()
			require("nvim-tree").setup()
		end,
	}
}