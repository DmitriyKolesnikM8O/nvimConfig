require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = { "lua_ls", "clangd", "golangci_lint_ls" }

})

local on_attach = function(_, _)
	vim.keymap.set('n', '<C+n>', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require('lspconfig').lua_ls.setup {
	on_attach = on_attach
}
require('lspconfig').clangd.setup {}
require('lspconfig').golangci_lint_ls.setup {}


