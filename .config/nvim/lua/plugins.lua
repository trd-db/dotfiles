-- [[ PLUGINS ]]
--------------------------------------------------
--------------------------------------------------

-- Load packer
vim.cmd('packadd packer.nvim')

local packer = require('packer')
local packer_util = require('packer.util')

return require('packer').startup(function(use)
  
        use 'wbthomason/packer.nvim'

        -- LSP
        use 'williamboman/nvim-lsp-installer'
        use 'neovim/nvim-lspconfig'

        -- Better syntax highlighting
        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate',
            config = function() require('plugins.treesitter') end,
            cmd = { 'TSUpdate', 'TSUpdateSync' },
        }

        -- Colorscheme
        use({
          'projekt0n/github-nvim-theme',
          config = function()
            require('github-theme').setup({
                  theme_style = "light"
            })
          end
        })
	    -- Completion
        use({
            "hrsh7th/nvim-cmp",
            requires = {
                  { "hrsh7th/cmp-buffer"},
                  { "hrsh7th/cmp-nvim-lsp"},
                  { "hrsh7th/cmp-path"},
                  { "hrsh7th/cmp-nvim-lua"},
                  { "saadparwaiz1/cmp_luasnip"},
            },
		    config = function() require('lsp') end
	})

	    -- luasnip
        use 'L3MON4D3/LuaSnip'
        
        -- Copilot
        use 'github/copilot.vim'
  
        -- Good defaults
        use 'tpope/vim-sensible'
        
        -- 
        use {
            'numToStr/Comment.nvim',
            config = function() require('Comment').setup() end
        }
        
        -- Easymotion/Hop
        use {
            'phaazon/hop.nvim',
            branch = 'v2', -- optional but strongly recommended
            config = function() require('hop').setup{keys = 'etovxqpdygfblzhckisuran'} end }

        -- Surround
        use({
            "kylechui/nvim-surround",
            tag = "*", -- Use for stability; omit to use `main` branch for the latest features
            config = function()require("nvim-surround").setup() end
        })

        -- Repeat
        use 'tpope/vim-repeat'
        
        -- Git
        use {
            'lewis6991/gitsigns.nvim',
            config = function() require('gitsigns').setup({
                
            }) end
        }
        
        use 'tpope/vim-fugitive'
        
        -- Lualine
        use {
          'nvim-lualine/lualine.nvim',
          config = function() require('plugins.lualine') end
        }
        
        -- Fuzzy finding
        use {
            'nvim-telescope/telescope.nvim',
            requires = { 
                {'nvim-lua/plenary.nvim'}    
            }
        }
        
        -- File explorer
        use {
            'kyazdani42/nvim-tree.lua',
            config = function() require('nvim-tree').setup({
               renderer = { icons = { show = {file= false, folder=false, folder_arrow=false, git=false}}}
            }) end
        }

        -- Save place in file
       use {
           'ethanholz/nvim-lastplace',
            config = function() require('nvim-lastplace').setup() end
       } 

       -- Auto pairs
       use {
       "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end
       }
end)
