-- [[ INIT]]
--------------------------------------------------
--------------------------------------------------

if vim.fn.exists('g:vscode') == 1 then
    if vim.fn.has('win32') == 1 then
        vim.cmd('source ~/AppData/Local/nvim/vscode.vim')
    else
        vim.cmd('source ~/.config/nvim/vscode.vim')
    end
    vim.cmd('source ~/.config/nvim/vscode.vim')
else
    require('plugins')
    require('config')
    require('keymap')
    require('lsp')
end