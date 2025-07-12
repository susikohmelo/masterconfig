
local M = {};

local colors = {
bg		= '#000000',
fg		= '#e5e1d8',

dark_blue = '#000311',
black   = '#000000',
gray    = '#555555',
red     = '#ff4d4d',
green   = '#7cff6a',
yellow  = '#ff9a00',
brown	= '#d95c00',
blue    = '#358bff',
magenta = '#ff3285',
cyan    = '#00e7ff',
white   = '#e5e1d8',
}

function M.colorscheme()
	vim.cmd('highlight clear')
	--vim.cmd('syntax reset')

	vim.o.background = 'dark';
	vim.g.colors_name = 'susikolormelo'

	local set = vim.api.nvim_set_hl

	set(0, 'Normal',		{ bg = colors.bg,	fg = colors.fg })
	set(0, 'Visual',		{ fg = colors.bg,	bg = colors.yellow })

	set(0, 'Error',			{ bg = colors.red, fg = colors.bg, bold = true})
	set(0, 'Comment',		{ fg = colors.blue,	italic = true	})
	set(0, 'Function',		{ fg = colors.cyan })
	set(0, 'Statement',		{ fg = colors.yellow })
	set(0, 'String',		{ fg = colors.red })
	set(0, 'Constant',		{ fg = colors.green })
	set(0, 'Type',			{ fg = colors.green })
	set(0, 'Identifier',	{ fg = colors.magenta })
	set(0, 'Special',		{ fg = colors.cyan })
	set(0, 'Keyword',		{ fg = colors.yellow, bold = true})
	
	set(0, 'CursorLine',	{ bg = colors.dark_blue })
	set(0, 'CursorLineNr',	{ fg = colors.white, bold = true})
	set(0, 'LineNr',		{ fg = colors.brown })

	set(0, 'StatusLine',	{ bg = colors.bg , fg = colors.white, bold = true})
	set(0, 'StatusLineNC',	{ bg = colors.bg , fg = colors.gray})
end

return M;
