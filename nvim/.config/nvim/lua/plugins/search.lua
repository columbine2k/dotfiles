return {
	-- fzf 
	{
		'ibhagwan/fzf-lua',
		config = function()
			-- 快捷键
			vim.api.nvim_set_keymap("n", "<leader>f", ":FzfLua<CR>", { noremap = true })
			vim.api.nvim_set_keymap("n", "<leader>fl", ":FzfLua files<CR>", { noremap = true })
			
			require("fzf-lua").setup({
        "fzf-telescope",
        winopts = {
          border = 'thicc',
        },
			})
		end
	},
}
