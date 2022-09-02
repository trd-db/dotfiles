-- [[ KEYMAP ]]
--------------------------------------------------
--------------------------------------------------

-- [[ Leader ]]
--------------------------------------------------
vim.g.mapleader = ','

-- [[ nvim-tree ]]
--------------------------------------------------
vim.keymap.set('n', '<leader>ne', function() require("nvim-tree").toggle() end)

-- [[ Telescope ]]
--------------------------------------------------
vim.keymap.set('n', '<leader>ff', function() require("telescope.builtin").find_files() end)
vim.keymap.set('n', '<leader>fg', function() require("telescope.builtin").live_grep() end)
vim.keymap.set('n', '<leader>fb', function() require("telescope.builtin").buffers() end)
vim.keymap.set('n', '<leader>fh', function() require("telescope.builtin").help_tags() end)

-- [[ Hop ]]
--------------------------------------------------
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("n", '<leader><leader>w', "<cmd>lua require'hop'.hint_words()<cr>", opts)
keymap("n", '<leader><leader>b', "<cmd>lua require'hop'.hint_words()<cr>", opts)
keymap("n", '<leader><leader>e', "<cmd>lua require'hop'.hint_words()<cr>", opts)
keymap("n", '<leader><leader>f', "<cmd>lua require'hop'.hint_char1()<cr>", opts)
keymap("n", '<leader><leader>t', "<cmd>lua require'hop'.hint_char2()<cr>", opts)
keymap("n", '<leader><leader>/', "<cmd>lua require'hop'.hint_patterns()<cr>", opts)
keymap("n", '<leader><leader>j', "<cmd>lua require'hop'.hint_lines()<cr>", opts)
keymap("n", '<leader><leader>k', "<cmd>lua require'hop'.hint_lines()<cr>", opts)

keymap("v", '<leader><leader>w', "<cmd>lua require'hop'.hint_words()<cr>", opts)
keymap("v", '<leader><leader>b', "<cmd>lua require'hop'.hint_words()<cr>", opts)
keymap("v", '<leader><leader>o', "<cmd>lua require'hop'.hint_char1()<cr>", opts)
keymap("v", '<leader><leader>t', "<cmd>lua require'hop'.hint_char2()<cr>", opts)
keymap("v", '<leader><leader>/', "<cmd>lua require'hop'.hint_patterns()<cr>", opts)
keymap("v", '<leader><leader>l', "<cmd>lua require'hop'.hint_lines()<cr>", opts)
