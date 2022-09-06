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
vim.keymap.set("n", '<leader><leader>w', "<cmd>lua require'hop'.hint_words()<cr>", opts)
vim.keymap.set("n", '<leader><leader>b', "<cmd>lua require'hop'.hint_words()<cr>", opts)
vim.keymap.set("n", '<leader><leader>e', "<cmd>lua require'hop'.hint_words()<cr>", opts)
vim.keymap.set("n", '<leader><leader>f', "<cmd>lua require'hop'.hint_char1()<cr>", opts)
vim.keymap.set("n", '<leader><leader>t', "<cmd>lua require'hop'.hint_char2()<cr>", opts)
vim.keymap.set("n", '<leader><leader>/', "<cmd>lua require'hop'.hint_patterns()<cr>", opts)
vim.keymap.set("n", '<leader><leader>j', "<cmd>lua require'hop'.hint_lines()<cr>", opts)
vim.keymap.set("n", '<leader><leader>k', "<cmd>lua require'hop'.hint_lines()<cr>", opts)

vim.keymap.set("v", '<leader><leader>w', "<cmd>lua require'hop'.hint_words()<cr>", opts)
vim.keymap.set("v", '<leader><leader>b', "<cmd>lua require'hop'.hint_words()<cr>", opts)
vim.keymap.set("v", '<leader><leader>o', "<cmd>lua require'hop'.hint_char1()<cr>", opts)
vim.keymap.set("v", '<leader><leader>t', "<cmd>lua require'hop'.hint_char2()<cr>", opts)
vim.keymap.set("v", '<leader><leader>/', "<cmd>lua require'hop'.hint_patterns()<cr>", opts)
vim.keymap.set("v", '<leader><leader>l', "<cmd>lua require'hop'.hint_lines()<cr>", opts)


-- [[ Refactor ]]
--------------------------------------------------
vim.api.nvim_set_keymap(
    "v",
    "<leader>rr",
    ":lua require('refactoring').select_refactor()<CR>",
    { noremap = true, silent = true, expr = false }
)

-- [[ Misc ]]
--------------------------------------------------
-- Leader q closes buffer
vim.keymap.set("n", "<leader>q", "<cmd>bd<cr>", opts)
