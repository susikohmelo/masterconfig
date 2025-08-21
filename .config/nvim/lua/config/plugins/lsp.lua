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
			on_attach = function(client, bufnr)
				vim.lsp.completion.enable(true, client.id, bufnr,
				{
					autotrigger = true,
					convert = function(item)
						return { abbr = item.label:gsub("%b()", "") }
					end,
				})
				vim.keymap.set("i", "<C-n>", vim.lsp.completion.get, { desc = "trigger autocompletion" })
			end
		}
		end,
	}
}
