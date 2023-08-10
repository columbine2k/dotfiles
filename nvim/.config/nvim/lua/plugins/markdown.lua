return {
  -- markdown 预览
  -- 需安装 deno
	{
    'toppair/peek.nvim',
	  build = 'deno task --quiet build:fast',
	  ft = 'markdown',
	  config = function()
		  vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
		  vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
		  require('peek').setup ({
			  theme = 'light',
			  app = 'browser',
		  })
	  end,
	},
  -- markdown wiki
  {
    'vimwiki/vimwiki',
    init = function()
      vim.g.vimwiki_list = {
        {
          path = '~/Documents/PersonalNotes/',
          syntax = 'markdown',
          ext = '.md'
        },
      }
			-- 禁止把所有 md 文档设为 vimwiki
      vim.g.vimwiki_global_ext = 0
      vim.g.vimwiki_folding = "list"
			-- 不同标题不同颜色
      vim.g.vimwiki_hl_headers = 1
      vim.g.vimwiki_markdown_link_ext = 1
      vim.g.taskwiki_markdown_syntax = "markdown"
      vim.g.indentLine_conceallevel = 2
    end,
  },
  -- 表格格式化
  {
    'dhruvasagar/vim-table-mode',
    ft = { "markdown", "vimwiki" },
    config = function()
			vim.g.table_mode_corner = '|'
			vim.keymap.set("n", "\\f", ":TableModeToggle<CR>", { noremap = true })
    end,
  },
}
