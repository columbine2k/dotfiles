return {
  -- wilder nvim_command命令提示
	{
		'gelguy/wilder.nvim',
		config = function()
			local wilder = require('wilder')
			wilder.setup({
				modes = { ':', '/', '?' },
				next_key = 0, previous_key = 0, reject_key = 0, accept_key = 0
			})
			vim.api.nvim_command("silent! UpdateRemotePlugins") 
			-- 设置source
			wilder.set_option('pipeline',{
				wilder.branch(
					{
						wilder.check(function (_, x) return vim.fn.empty(x) end),
						wilder.history(15)
					},
				wilder.cmdline_pipeline({
					fuzzy = 1,
					fuzzy_filter = wilder.vim_fuzzy_filter()
				}),
				wilder.search_pipeline()
				),
			})
			-- 设置样式
			wilder.set_option('renderer', wilder.popupmenu_renderer(
				wilder.popupmenu_border_theme({
					highlights = {
            accent = "WilderAccent",
					},
					highlighter = wilder.basic_highlighter(),
					left = { ' ', wilder.popupmenu_devicons() },
					right = { ' ', wilder.popupmenu_scrollbar() },
					border = 'rounded',
					max_height = 10
				})
			))
			-- 设置高亮
			vim.api.nvim_set_hl(0, 'WilderAccent', { fg = '#d5ff80' })
			-- 设置快捷键
			vim.api.nvim_set_keymap('c', '<tab>', [[wilder#in_context() ? wilder#next() : '<tab>']],   { noremap = true, expr = true })
			vim.api.nvim_set_keymap('c', '<Down>', [[wilder#in_context() ? wilder#next() : '<down>']], { noremap = true, expr = true })
			vim.api.nvim_set_keymap('c', '<up>', [[wilder#in_context() ? wilder#previous() : '<up>']], { noremap = true, expr = true })
			vim.api.nvim_set_keymap('c', '0', '0', {})
		end,
	},
  -- 右侧大纲
  {
    'stevearc/aerial.nvim',
    config = function()
      require('aerial').setup({
      })
    end,
  },
}
