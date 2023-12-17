return {
  {
    'ixru/nvim-markdown',
  },
  -- markdown wiki
  {
    'serenevoid/kiwi.nvim',
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local kiwi = require('kiwi')
			vim.keymap.set("n", "<leader>ww", kiwi.open_wiki_index, { noremap = true })
			vim.keymap.set("n", "<leader>t", kiwi.todo.toggle, { noremap = true })
      require('kiwi').setup({
        {
          name = "law",
          path = "/Users/suzhenkai/Documents/PersonalNotes/Law/",
        },
      })
    end,
  },
  -- markdown 预览
  {
    'iamcco/markdown-preview.nvim',
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
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
