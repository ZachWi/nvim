-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- In your packer startup block:
    use {
        "ZachWi/motorbike",
        config = function()
            local motorbike = require("motorbike")
            motorbike.setup({})  -- optional
            motorbike.set_directories(
                "/Users/zacharywillis/motorbike/",
                "/Users/zacharywillis/.config/nvim/"
            )
        end
    }

   use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { "catppuccin/nvim", as = "catppuccin" }

    use({
        'folke/tokyonight.nvim',
        as = 'tokyonight',
        config = function()
            vim.cmd.colorscheme "catppuccin"
        end
    })
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
    use 'neovim/nvim-lspconfig' -- Core LSP client
    use 'williamboman/mason.nvim' -- Language server installer
    use 'williamboman/mason-lspconfig.nvim' -- Integrates Mason with nvim-lspconfig
    use 'VonHeikemen/lsp-zero.nvim' -- LSP Zero itself
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'folke/neodev.nvim'
end)
