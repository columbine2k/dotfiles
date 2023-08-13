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
  -- wiki
  {
    'mickael-menu/zk-nvim',
    config = function()
      require("zk").setup ({
        picker = "fzf",
        lsp = {
          config = {
            cmd = { "zk", "lsp" },
            name = "zk",
          },
          auto_attach = {
            enabled = true,
            filetypes = { "markdown" },
          },
        },
      })
    end,
  },
  {
    'lervag/wiki.vim',
    config = function()
      vim.g.wiki_root = "~/Documents/PersonalNotes/"
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
