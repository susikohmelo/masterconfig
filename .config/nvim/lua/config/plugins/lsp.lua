return {
	{
		"neovim/nvim-lspconfig",
		enabled = true,
		--dependencies = {
		--	"folke/lazydev.nvim",
		--}
		config = function()
			--vim.lsp.enable('clangd')
			--require("lspconfig").lua_ls.setup {}
			require('lspconfig').clangd.setup {
			filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto", "hpp" },
			capabilities = capabilities,
		}
		end,
	}
}
