local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    Packer_Bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
        install_path })
end

return require('packer').startup(function(use)

    use { "wbthomason/packer.nvim" }
    use { "lewis6991/impatient.nvim" }
    use { "nvim-lua/plenary.nvim" }

    use { "rebelot/kanagawa.nvim" }
    use { "windwp/nvim-autopairs" }
    use { "numToStr/Comment.nvim" }
    use { "kyazdani42/nvim-web-devicons" }
    use { "nvim-lualine/lualine.nvim" }
    use { "nvim-telescope/telescope.nvim" }
    use { 'kyazdani42/nvim-tree.lua' }
    use { "ahmedkhalf/project.nvim" }
    -- LSP & Treesitter

    use { 'neovim/nvim-lspconfig' }

    use { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" }
    use { 'nvim-treesitter/nvim-treesitter' }
    -- Rust --
    -- use { 'simrat39/rust-tools.nvim' }
    use { 'saecki/crates.nvim' }
    --

    -- cmp & Snippet
    use { 'L3MON4D3/LuaSnip' }
    use { 'rafamadriz/friendly-snippets' }

    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-nvim-lua' }
    use { 'saadparwaiz1/cmp_luasnip' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }

    --
    use { 'voldikss/vim-floaterm' }
    use { 'folke/which-key.nvim' }

    -- colors
    use { 'rrethy/vim-hexokinase', run = "cd ~/local/share/nvim/site/pack/packer/start/hexokinase && make hexokinase" }

    --markdown
    use { "ellisonleao/glow.nvim" }

    if Packer_Bootstrap then
        require('packer').sync()
    end
end)
