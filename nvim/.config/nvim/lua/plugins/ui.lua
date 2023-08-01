return {
	-- 主题
	{
		'Shatur/neovim-ayu',
		config = function()
			vim.cmd( "colorscheme ayu-mirage")
		end,
	},
	-- 函数树
  {
    'utilyre/barbecue.nvim',
    name = "barbecue",
    version = "*",
    dependencies = { "SmiteshP/nvim-navic" },
    config = true
  },
	-- 括号线
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require("indent_blankline").setup {
        show_current_context = true,
        show_current_context_start = true,
      }
    end,
  },
	-- buffer
	{
		'akinsho/bufferline.nvim',
		config = function()
			require("bufferline").setup{}
		end,
	},
}