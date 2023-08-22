-- Mason configuration for downloading servers
local servers = { "lua_ls", "clangd", "texlab", "pyright", "html", "rust_analyzer"}
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = servers,
})

-- :LspInfo
-- :LspStop
local nvim_lsp = require('lspconfig')

-- Mapping
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<space>r', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>ef', function() vim.lsp.buf.format { async = true } end, bufopts)
end

-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- require("lspconfig").sumneko_lua.setup {}
-- LSP config for servers
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = {
            debounce_text_changes = 150,
        }
    }
end
