return {
	{
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  dependencies = {
	    {'neovim/nvim-lspconfig'},             
	    {                                      
	      'williamboman/mason.nvim',
	      build = function()
	        pcall(vim.cmd, 'MasonUpdate')
	      end,
	    },
	    {'williamboman/mason-lspconfig.nvim'}, 
	    {'hrsh7th/nvim-cmp'},     
	    {'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
			{'hrsh7th/cmp-path'},
			{'hrsh7th/cmp-buffer'}, 
	    {'L3MON4D3/LuaSnip'},
			{'saadparwaiz1/cmp_luasnip'},
			{'rafamadriz/friendly-snippets'},
			{'onsails/lspkind-nvim'},
	  },
		config = function()
			local lsp = require("lsp-zero")
			lsp.on_attach(function(client, bufnr)
			  lsp.default_keymaps({buffer = bufnr})
			end)			
			lsp.ensure_installed({
			  'lua_ls',
			  'bashls',
			  'marksman',
				'prosemd_lsp',
				'remark_ls',
        'vale_ls',
				'zk'
			})			
			lsp.setup()
			-- cmp 自动补全
			local cmp = require('cmp')
			local cmp_action = require('lsp-zero').cmp_action()
			require('luasnip.loaders.from_vscode').lazy_load()
			cmp.setup({
			  sources = {
					{name = 'nvim_lsp'},
					{name = 'luasnip'},
					{name = 'path'},
					{name = 'buffer'},
				},
				mapping = {
					['<C-f>'] = cmp_action.luasnip_jump_forward(),
					['<C-b>'] = cmp_action.luasnip_jump_backward(),
					['<CR>'] = cmp.mapping.confirm({select = true}),
					["<Tab>"] = cmp_action.luasnip_supertab(),
					["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
			})
		end
	}
}
