return {
	-- fzf 
	{
		'ibhagwan/fzf-lua',
		config = function()
			-- 快捷键
			vim.api.nvim_set_keymap("n", "<leader>f", ":FzfLua<CR>", { noremap = true })
			vim.api.nvim_set_keymap("n", "<leader>fl", ":FzfLua files<CR>", { noremap = true })
			
			require("fzf-lua").setup({
				global_git_icons = false,
				global_file_icons = false,
				winopts = {
					border  = { ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
					preview = {
						title_align = "center",
						scrollbar = "float",
					},
				},
				fzf_opts = {
					["--ansi"] = "",
					["--info"] = "inline",
					["--height"] = "100%",
					["--layout"] = "reverse",
					["--border"] = "none",
					["--prompt"] = "❯",
					["--pointer"] = "❯",
					["--marker"] = "❯",
					["--no-scrollbar"] = "",
				},
				fzf_colors = {
					["fg"] = { "fg", "FzfLuaColorsFg" },
					["fg+"] = { "fg", "FzfLuaColorsFgSel", "reverse:-1" },
					["bg"] = { "fg", "FzfLuaColorsBg" },
					["bg+"] = { "fg", "FzfLuaColorsBgSel" },
					["hl"] = { "fg", "FzfLuaColorsHl" },
					["hl+"] = { "fg", "FzfLuaColorsHlSel", "underline:reverse:-1" },
					["info"] = { "fg", "FzfLuaColorsInfo" },
					["gutter"] = { "fg", "FzfLuaColorsGutter" },
					["prompt"] = { "fg", "FzfLuaColorsPrompt" },
					["pointer"] = { "fg", "FzfLuaColorsPointer" },
					["marker"] = { "fg", "FzfLuaColorsMarker" },
					["spinner"] = { "fg", "FzfLuaColorsSpinner" },
					["header"] = { "fg", "FzfLuaColorsHeader" },
				},
			})
		end
	},
}