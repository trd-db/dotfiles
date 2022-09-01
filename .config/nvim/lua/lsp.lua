-- [[ LSP ]]
--------------------------------------------------
--------------------------------------------------

-- Setup LSP Installer
require('nvim-lsp-installer').setup({
    ui = {
        icons = {
            server_installed = '✓',
            server_pending = '➜',
            server_uninstalled = '✗'
        }
    }
})

-- CCLS for C++
require('lspconfig')['ccls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

-- Pyright for python
require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
