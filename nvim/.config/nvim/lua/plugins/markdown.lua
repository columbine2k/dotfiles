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
  -- obsidian 
  {
    'epwalsh/obsidian.nvim',
    dependencies = { 
      "nvim-lua/plenary.nvim",
      "godlygeek/tabular",
      "preservim/vim-markdown",
    },
    config = function()
      require("obsidian").setup({
        dir = "~/Documents/PersonalNotes/",
        notes_subdir = "VimNote",
        daily_notes = {
          folder = "Journal",
          date_format = "%Y-%m-%d",
        },
        completion = {
          nvim_cmp = true,
          min_chars = 2,
          new_notes_location = "notes_subdir",
          prepend_note_id = true
        },
        finder = "fzf-lua",
      })
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
