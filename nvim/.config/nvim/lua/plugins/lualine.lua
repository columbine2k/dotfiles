return {
	{
		'nvim-lualine/lualine.nvim',
		config = function()
			-- 自定义 vi_mode 样式
			local mode_map = {
			  ['NORMAL'] = 'N',
			  ['O-PENDING'] = 'N?',
			  ['INSERT'] = 'I',
			  ['VISUAL'] = 'V',
			  ['V-BLOCK'] = 'VB',
			  ['V-LINE'] = 'VL',
			  ['V-REPLACE'] = 'VR',
			  ['REPLACE'] = 'R',
			  ['COMMAND'] = '!',
			  ['SHELL'] = 'SH',
			  ['TERMINAL'] = 'T',
			  ['EX'] = 'X',
			  ['S-BLOCK'] = 'SB',
			  ['S-LINE'] = 'SL',
			  ['SELECT'] = 'S',
			  ['CONFIRM'] = 'Y?',
			  ['MORE'] = 'M',
			}
			-- gitsigns 引用
			local function diff_source()
			  local gitsigns = vim.b.gitsigns_status_dict
			  if gitsigns then
			    return {
			      added = gitsigns.added,
			      modified = gitsigns.changed,
			      removed = gitsigns.removed
			    }
			  end
			end

			-- 自定义 fileformat 图标
			local function unix()
				return [[UNIX]]
			end
			
			require('lualine').setup({
				options = {
          -- 主题
					theme = 'ayu_mirage',
					component_separators = { left = '', right = ''},
					section_separators = { left = '', right = ''},
				},
				sections = {
					lualine_a = { {'mode', fmt = function(s) return mode_map[s] or s end} },
					lualine_b = {
						{ "filesize" },
						{ "filename" }
					},
					lualine_c = { "progress", "location" },
					lualine_x = {
						{
							"b:gitsigns_head",
							icon = "",
							color = { fg = "#98c379" }
						},
						{
							"diff",
							source = diff_source,
							symbols = { added = "", modified = "", removed = "" }
						},
					},
					lualine_y = { "filetype" },
          lualine_z = {
						"encoding",
						unix,
					},
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = { "location" },
					lualine_y = {},
					lualine_z = {}
        }
			})
		end
	}
}