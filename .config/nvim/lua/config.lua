-- [[ CONFIG ]]
--------------------------------------------------
--------------------------------------------------


-- [[ Backups ]]
--------------------------------------------------
-- Creates a backup file
vim.opt.backup = false
-- Creates a swapfile
vim.opt.swapfile = false
vim.opt.undodir = vim.fn.stdpath "cache" .. "/undo"
-- Enable persistent undo
vim.opt.undofile = true
-- If a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
vim.opt.writebackup = false


-- [[ Timing ]]
--------------------------------------------------
-- Faster completion
vim.opt.updatetime = 300
-- Time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.timeoutlen = 500


-- [[ Themes ]]
--------------------------------------------------
-- Set terminal colors
vim.g.t_co = 256
-- Allow syntax highlighting
vim.opt.syntax = "ON"
-- If term supports ui color then enable
vim.opt.termguicolors = true
-- Fixes indentline for now
vim.opt.colorcolumn = "99999"
-- Highlight the current line
vim.opt.cursorline = true
-- The font used in graphical neovim applications
vim.opt.guifont = "monospace:h17"


-- [[ Context ]]
--------------------------------------------------
-- Show col for max line length
vim.opt.colorcolumn = '80'
-- Show line numbers
vim.opt.number = true
-- bool: Show relative line numbers
vim.opt.relativenumber = true
-- Min num lines of context
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
-- Show the sign column
vim.opt.signcolumn = "yes"
-- More space in the neovim command line for displaying messages
vim.opt.cmdheight = 2
-- Pop up menu height
vim.opt.pumheight = 10
-- So that `` is visible in markdown files
vim.opt.conceallevel = 0
-- Allows neovim to access the system clipboard
vim.opt.clipboard = "unnamedplus"
-- Make indenting smarter again
vim.opt.smartindent = true
-- Required to keep multiple buffers and open multiple buffers
vim.opt.hidden = true
-- Allow the mouse to be used in neovim
vim.opt.mouse = "a"
vim.opt.completeopt = {"menu" , "menuone" , "noselect" }
-- Full wild menu
vim.opt.wildmenu = true
vim.opt.wildmode = "list:longest,full"


-- [[ Wrap ]]
--------------------------------------------------
-- Wrap lines
vim.opt.wrap = true
vim.opt.linebreak = true


-- [[ Filetypes ]]
--------------------------------------------------
-- String encoding to use
vim.opt.encoding = 'utf8'
-- File encoding to use
vim.opt.fileencoding = 'utf8'


-- [[ Search ]]
--------------------------------------------------
-- Ignore case in search patterns
vim.opt.ignorecase = true
-- Override ignorecase if search contains capitals
vim.opt.smartcase = true
-- Use incremental search
vim.opt.incsearch = true
vim.opt.hlsearch = true


-- [[ Whitespace ]]
--------------------------------------------------
-- Use spaces instead of tabs
vim.opt.expandtab = true
-- Size of an indent
vim.opt.shiftwidth = 4
--  Number of spaces tabs count for in insert mode
vim.opt.softtabstop = 4
-- Number of spaces tabs count for
vim.opt.tabstop = 4
-- Always show tabs
vim.opt.showtabline = 2


-- [[ Splits ]]
--------------------------------------------------
-- Place new window to right of current one
vim.opt.splitright = true
-- Place new window below the current one
vim.opt.splitbelow = true


-- [[ Folding ]]
--------------------------------------------------
-- Folding set to "expr" for treesitter based folding
vim.opt.foldmethod = "manual"
-- Set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.foldexpr = ""


-- [[ Spell ]]
--------------------------------------------------
vim.opt.spell = false
vim.opt.spelllang = "en"

