return {
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
    end
  }
}
