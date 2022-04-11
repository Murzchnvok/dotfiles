local lspconfig = require("lspconfig")
local lspsig = require("lsp_signature")
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

local buf_map = vim.api.nvim_buf_set_keymap
local opts = { noremap = true, silent = true }

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = false,
	virtual_text = {
		-- ■ ● x ▎
		prefix = "●",
	},
})

local signs = { Error = "▎", Warn = "▎", Hint = "▎", Info = "▎" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

lspsig.setup({
	floating_window = false,
	hint_prefix = "",
	handler_opts = {
		border = "none",
	},
	transparency = 100,
})

local on_attach = function(_, bufnr)
	buf_map(bufnr, "n", "<Leader>lD", ":lua vim.lsp.buf.declaration()<CR>", opts)
	buf_map(bufnr, "n", "<Leader>ld", ":lua vim.lsp.buf.definition()<CR>", opts)
	buf_map(bufnr, "n", "<Leader>lh", ":lua vim.lsp.buf.hover()<CR>", opts)
	buf_map(bufnr, "n", "<Leader>lr", ":lua vim.lsp.buf.rename()<CR>", opts)
	buf_map(bufnr, "n", "<Leader>lc", ":lua vim.lsp.buf.code_action()<CR>", opts)
	lspsig.on_attach()
end

lspconfig.cssls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "css", "scss", "less" },
})

lspconfig.cssmodules_ls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
})

lspconfig.emmet_ls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "html", "css", "typescriptreact", "javascriptreact" },
})

lspconfig.html.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig.gopls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig.pyright.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig.rust_analyzer.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		["rust-analyzer"] = {
			assist = {
				importPrefix = "by_self",
			},
			cargo = {
				loadOutDirsFromCheck = true,
				allFeatures = true,
			},
			procMacro = {
				enable = true,
			},
			checkOnSave = {
				command = "clippy",
			},
		},
	},
})

lspconfig.tsserver.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
