return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' },
		enabled = true,
		config = function()
			local plug = require 'telescope.builtin'
			vim.keymap.set('n', '<leader>ff', plug.find_files, {})
			vim.keymap.set('n', '<leader>fg', plug.git_files, {})
			--vim.keymap.set('n', '<C-p>', plug.git_files, {})
			vim.keymap.set('n', '<leader>fs', function()
				plug.grep_string({ search = vim.fn.input("Grep > ") })
			end)
		end
	},
}
