-- Markdown 文件预览
-- 需安装 Deno
return {
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
	end
	}
}