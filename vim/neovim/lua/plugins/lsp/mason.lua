
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

local servers = {
    	"lua_ls",
        "cmake",
        "clangd",
	"html",
	"pyright",
        "bashls",
	"jsonls",
}

require('mason-lspconfig').setup({
    ensure_installed = servers,
    automatic_enable = servers,
})


for _, server in ipairs(servers) do
    local opts = {
        on_attach = require('plugins.lsp.handlers').on_attach,
        capabilities = require('plugins.lsp.handlers').capabilities,
    }

    local ok, custom_opts = pcall(require, 'plugins.lsp.settings.' .. server)
    if ok then
        opts = vim.tbl_deep_extend("force", opts, custom_opts)
    end

    vim.lsp.config(server, opts)
    vim.lsp.enable(server)
end




