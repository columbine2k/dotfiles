return {
	-- 函数树(依赖 lsp)
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
  -- 注释
	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end,
	},
  -- smartyank 智能+远程复制
  {
    'ibhagwan/smartyank.nvim',
    config = function()
      require('smartyank').setup {}
    end,
  },
}
