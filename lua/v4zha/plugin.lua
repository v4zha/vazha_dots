local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins={
  { "wbthomason/packer.nvim" },
  { "lewis6991/impatient.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "rebelot/kanagawa.nvim"},
  { "windwp/nvim-autopairs" },
  { "numToStr/Comment.nvim" },
  { "kyazdani42/nvim-web-devicons" },
  { "nvim-lualine/lualine.nvim" },
  { "nvim-telescope/telescope.nvim" },
  { 'kyazdani42/nvim-tree.lua' },
  { "ahmedkhalf/project.nvim" },
  { "ggandor/leap.nvim" },
  -- LSP & Treesitter

  { 'neovim/nvim-lspconfig' },
  { "williamboman/mason.nvim"},
  {"williamboman/mason-lspconfig.nvim"},
  { 'nvim-treesitter/nvim-treesitter' },
  { "jose-elias-alvarez/null-ls.nvim" },
  { 'j-hui/fidget.nvim' },
  -- Rust --,
  --  { 'simrat39/rust-tools.nvim' }
  { 'saecki/crates.nvim' },
  { 'mfussenegger/nvim-dap' },
  --

  -- cmp & Snippet
  { 'L3MON4D3/LuaSnip' },
  { 'rafamadriz/friendly-snippets' },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-nvim-lua' },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  --term and whichkey,
  { 'voldikss/vim-floaterm' },
  { 'folke/which-key.nvim' },

  --markdown
  { "ellisonleao/glow.nvim" },

  --haskell
  { "itchyny/vim-haskell-indent" },
}

require("lazy").setup({
  plugins
})
