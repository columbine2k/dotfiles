return {
  -- 图标包
  {
    'nvim-tree/nvim-web-devicons',
    config = function()
    end,
  },
	-- colorscheme ayu
	{
		'Shatur/neovim-ayu',
		config = function()
			vim.cmd( "colorscheme ayu-mirage")
		end,
	},
  -- colorscheme 神奈川
  {
    'rebelot/kanagawa.nvim',
    config = true,
  },
  -- colorscheme everforest
  {
    'neanias/everforest-nvim',
    config = function()
    end,
  },
  -- oceanic-next colorscheme
  {
    'mhartington/oceanic-next',
    config = function()
    end,
  },
  -- tokyonight colorscheme
  {
    'folke/tokyonight.nvim',
    config = function()
    end,
  },
  -- 文件浏览器
	{
		'nvim-tree/nvim-tree.lua',
		config = function()
			require("nvim-tree").setup()
		end,
	},
  -- 欢迎屏幕
  {
    'goolord/alpha-nvim',
    event = "VimEnter",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
      -- header
      local header = {
        [[ ⣇⣿⠘⣿⣿⣿⡿⡿⣟⣟⢟⢟⢝⠵⡝⣿⡿⢂⣼⣿⣷⣌⠩⡫⡻⣝⠹⢿⣿⣷ ]],
        [[ ⡆⣿⣆⠱⣝⡵⣝⢅⠙⣿⢕⢕⢕⢕⢝⣥⢒⠅⣿⣿⣿⡿⣳⣌⠪⡪⣡⢑⢝⣇ ]],
        [[ ⡆⣿⣿⣦⠹⣳⣳⣕⢅⠈⢗⢕⢕⢕⢕⢕⢈⢆⠟⠋⠉⠁⠉⠉⠁⠈⠼⢐⢕⢽ ]],
        [[ ⡗⢰⣶⣶⣦⣝⢝⢕⢕⠅⡆⢕⢕⢕⢕⢕⣴⠏⣠⡶⠛⡉⡉⡛⢶⣦⡀⠐⣕⢕ ]],
        [[ ⡝⡄⢻⢟⣿⣿⣷⣕⣕⣅⣿⣔⣕⣵⣵⣿⣿⢠⣿⢠⣮⡈⣌⠨⠅⠹⣷⡀⢱⢕ ]],
        [[ ⡝⡵⠟⠈⢀⣀⣀⡀⠉⢿⣿⣿⣿⣿⣿⣿⣿⣼⣿⢈⡋⠴⢿⡟⣡⡇⣿⡇⡀⢕ ]],
        [[ ⡝⠁⣠⣾⠟⡉⡉⡉⠻⣦⣻⣿⣿⣿⣿⣿⣿⣿⣿⣧⠸⣿⣦⣥⣿⡇⡿⣰⢗⢄ ]],
        [[ ⠁⢰⣿⡏⣴⣌⠈⣌⠡⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣬⣉⣉⣁⣄⢖⢕⢕⢕ ]],
        [[ ⡀⢻⣿⡇⢙⠁⠴⢿⡟⣡⡆⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣵⣵⣿ ]],
        [[ ⡻⣄⣻⣿⣌⠘⢿⣷⣥⣿⠇⣿⣿⣿⣿⣿⣿⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
        [[ ⣷⢄⠻⣿⣟⠿⠦⠍⠉⣡⣾⣿⣿⣿⣿⣿⣿⢸⣿⣦⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟ ]],
        [[ ⡕⡑⣑⣈⣻⢗⢟⢞⢝⣻⣿⣿⣿⣿⣿⣿⣿⠸⣿⠿⠃⣿⣿⣿⣿⣿⣿⡿⠁⣠ ]],
        [[ ⡝⡵⡈⢟⢕⢕⢕⢕⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⣀⣈⠙ ]],
        [[ ⡝⡵⡕⡀⠑⠳⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⢉⡠⡲⡫⡪⡪⡣ ]],
      }
      dashboard.section.header.val = header
      -- 选项卡
      dashboard.section.buttons.val = {
        dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
        dashboard.button( "<Leader>fl", "  > Find file", ":FzfLua files<CR>"),
        dashboard.button( "<Leader>fo", "  > Recent"   , ":FzfLua oldfiles<CR>"),
        dashboard.button( "<Leader>fg", "  > Find Word", ":FzfLua live_grep<CR>"),
      }
      alpha.setup(dashboard.opts)
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
