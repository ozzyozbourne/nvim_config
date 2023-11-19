vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mfussenegger/nvim-dap')
    use('mbbill/undotree')
    use('elentok/format-on-save.nvim')
    use('0x00-ketsu/autosave.nvim')
    use('akinsho/toggleterm.nvim')
    use('folke/which-key.nvim')
    use('folke/flash.nvim')
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }
    use { 'folke/zen-mode.nvim' }
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    }
    use {
        'NeogitOrg/neogit', requires = 'nvim-lua/plenary.nvim',
        config = function() require('neogit').setup() end
    }
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function() require('ibl').setup() end
    }
    use {
        'sindrets/diffview.nvim',
        config = function() require('diffview').setup() end
    }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use({
        'Wansmer/treesj',
        requires = { 'nvim-treesitter/nvim-treesitter' },
    })
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function() require 'alpha'.setup(require 'alpha.themes.startify'.config) end
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'neovim/nvim-lspconfig' },
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }
    use({
        "folke/trouble.nvim",
        config = function() require("trouble").setup { icons = false, } end
    })
    use({
        "kylechui/nvim-surround",
        tag = "*",
        config = function() require("nvim-surround").setup({}) end
    })
    use {
        "SmiteshP/nvim-navbuddy",
        requires = {
            "neovim/nvim-lspconfig",
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim",
            "numToStr/Comment.nvim",        -- Optional
            "nvim-telescope/telescope.nvim" -- Optional
        },
        config = function() require("nvim-navbuddy").setup { lsp = { auto_attach = true } } end
    }
    use {
        "VidocqH/lsp-lens.nvim",
        config = function() require("lsp-lens").setup {} end
    }
end)
