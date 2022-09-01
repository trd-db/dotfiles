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
        use 'ellisonleao/gruvbox.nvim'
        
	    -- Completion
        use({
            "hrsh7th/nvim-cmp",
            requires = {
                  { "hrsh7th/cmp-buffer", after = "nvim-cmp" },
                  { "hrsh7th/cmp-nvim-lsp", after = "nvim-cmp" },
                  { "hrsh7th/cmp-path", after = "nvim-cmp" },
                  { "hrsh7th/cmp-nvim-lua", after = "nvim-cmp" },
                  { "saadparwaiz1/cmp_luasnip", after = "nvim-cmp" },
            },
		    config = function() require('plugins.nvim-cmp') end
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
            config = function() require('gitsigns').setup() end
        }
        
        use 'tpope/vim-fugitive'
        
        -- Lualine
        use {
          'nvim-lualine/lualine.nvim',
          requires = { 'kyazdani42/nvim-web-devicons', opt = true },
          config = function() require('plugins.lualine') end
        }
        
        -- Fuzzy finding
        use {
            'nvim-telescope/telescope.nvim',
            requires = { 
                {'nvim-lua/plenary.nvim'}    
            }
        }
        
        -- Fuzzy wild menu
        use {
            'gelguy/wilder.nvim',
            config = function() require('plugins.wilder') end 
        }
        
        -- File explorer
        use {
            'kyazdani42/nvim-tree.lua',
            config = function() require('nvim-tree').setup() end
        }
        
        -- Debugger
        use { 
            'rcarriga/nvim-dap-ui', 
            requires = {'mfussenegger/nvim-dap'} 
        }
          
end)
