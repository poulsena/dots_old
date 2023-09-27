local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {},
	handlers = {
		lsp_zero.default_setup,
	},
})

local cmp = require('cmp')
cmp.setup({
	mapping = {
		['<CR>'] = cmp.mapping.confirm({select = false})
	}
})


--lsp_zero.on_attach(function(client, bufnr)
--	local opts = {buffer = bufnr, remap = false}
--
--	vim.keymap.set("n", "gd", function() vim.lsp_zero.buf.definition() end, opts)
--	vim.keymap.set("n", "K", function() vim.lsp_zero.buf.hover() end, opts)
--	vim.keymap.set("n", "<leader>vws", function() vim.lsp_zero.buf.workspace_symbol() end, opts)
--	vim.keymap.set("n", "<leader>vd", function() vim.lsp_zero.buf.open_float() end, opts)
--	vim.keymap.set("n", "[d", function() vim.lsp_zero.buf.goto_next() end, opts)
--	vim.keymap.set("n", "]d", function() vim.lsp_zero.buf.goto_prev() end, opts)
--	vim.keymap.set("n", "<leader>vca", function() vim.lsp_zero.buf.code_action() end, opts)
--	vim.keymap.set("n", "<leader>vrr", function() vim.lsp_zero.buf.references() end, opts)
--	vim.keymap.set("n", "<leader>vrn", function() vim.lsp_zero.buf.rename() end, opts)
--	vim.keymap.set("n", "<C-h>", function() vim.lsp_zero.buf.signature_help() end, opts)
--end)

