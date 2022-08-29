-- [[ LSP ]]
--------------------------------------------------
--------------------------------------------------

-- Setup LSP Installer
require('nvim-lsp-installer').setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
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