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
  -- 自动补全括号
  {
    'windwp/nvim-autopairs',
    config = function()
      local npairs_ok, npairs = pcall(require, "nvim-autopairs")
      if not npairs_ok then
        return
      end

      npairs.setup {
        check_ts = true,
        ts_config = {
          lua = { "string", "source" },
          javascript = { "string", "template_string" },
        },
        fast_wrap = {
          map = '<M-e>',
          chars = { '{', '[', '(', '"', "'" },
          pattern = [=[[%'%"%)%>%]%)%}%,]]=],
          end_key = '$',
          keys = 'qwertyuiopzxcvbnmasdfghjkl',
          check_comma = true,
          highlight = 'Search',
          highlight_grey='Comment'
        },
      }

      local cmp_autopairs = require "nvim-autopairs.completion.cmp"
      local cmp_status_ok, cmp = pcall(require, "cmp")
      if not cmp_status_ok then
        return
      end 
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })

    end,
  },
}
