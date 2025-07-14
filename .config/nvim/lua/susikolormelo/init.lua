
local M = {};

local c = {
bg		= '#000000',
fg		= '#e5e1d8',

black     = '#000000',
gray      = '#555555',
red       = '#ff4d4d',
true_red  = '#ff2222',
green     = '#7cff6a',
yellow    = '#ff9a00',
brown     = '#d95c00',
blue      = '#358bff',
dark_blue = '#000622',
magenta   = '#ff3285',
cyan      = '#00e7ff',
white     = '#e5e1d8',

light_black   = '#b4b4b4',
light_red     = '#f99f92',
light_green   = '#e3f7a1',
light_yellow  = '#f2e9bf',
light_blue    = '#b3d2ff',
light_magenta = '#e5bdff',
light_cyan    = '#c2fefa',
light_white   = '#ffffff',
}

function M.colorscheme()
	vim.cmd('highlight clear')
	vim.cmd('syntax reset')

	vim.o.background = 'dark';
	vim.g.c_name = 'susikolormelo'

	local set = vim.api.nvim_set_hl

	-- Universal
	set(0, 'Normal',		{ bg = c.bg,	fg = c.fg })
	set(0, 'Visual',		{ fg = c.bg,	bg = c.yellow })

	-- General syntax
	set(0, 'Error',			{ bg = c.red, fg = c.bg, bold = true})
	set(0, 'Comment',		{ fg = c.blue,	italic = true	})
	set(0, 'Function',		{ fg = c.cyan })
	set(0, 'Statement',		{ fg = c.yellow })
	set(0, 'Conditional',	{ fg = c.yellow })
	set(0, 'Operator',		{ fg = c.yellow })
	set(0, 'PreProc',		{ fg = c.yellow })
	set(0, 'StorageClass',	{ fg = c.magenta }) -- static etc.

	-- General data types
	set(0, 'Type',			{ fg = c.green })
	set(0, 'Constant',		{ fg = c.green })
	set(0, 'Identifier',	{ fg = c.white })
	set(0, 'Special',		{ fg = c.cyan })
	set(0, 'Keyword',		{ fg = c.yellow })

	-- Specific data types
	set(0, 'Character',		{ fg = c.green })
	set(0, 'String',		{ fg = c.red })
	set(0, 'Number',		{ fg = c.red })
	set(0, 'Float',			{ fg = c.magenta })
	
	set(0, 'CursorLine',	{ bg = c.dark_blue })
	set(0, 'CursorLineNr',	{ fg = c.yellow, bold = true})
	set(0, 'LineNr',		{ fg = c.brown })

	set(0, 'StatusLine',	{ bg = c.bg , fg = c.white, bold = true})
	set(0, 'StatusLineNC',	{ bg = c.bg , fg = c.gray})
end

return M;
