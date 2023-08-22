return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- Colorschemes
    use 'sainnhe/gruvbox-material'
    use 'EdenEast/nightfox.nvim'
    use 'Mofiqul/dracula.nvim'
    use 'overcache/NeoSolarized'
    use 'savq/melange'
    use 'sainnhe/sonokai'
    use 'folke/tokyonight.nvim'
    use 'romgrk/doom-one.vim'
    use 'tanvirtin/monokai.nvim'
    use 'mhartington/oceanic-next'
    use 'shaunsingh/nord.nvim'
    use 'ellisonleao/gruvbox.nvim'
    -- IDE
    use 'nvim-tree/nvim-tree.lua'
    -- use 'SidOfc/carbon.nvim'
    use 'stevearc/oil.nvim'
    use 'Yggdroot/indentLine'
    use 'nvim-lualine/lualine.nvim'
    use 'romgrk/barbar.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'norcalli/nvim-colorizer.lua'
    -- use 'tpope/vim-fugitive'
    use 'tpope/vim-commentary'
    -- use 'tpope/vim-surround'
    -- Telescope and highlight
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-lua/plenary.nvim'
    -- LSP Plugins
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    -- Autocompletion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lua'
    -- Snippets
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    -- Home page
    -- use 'goolord/alpha-nvim'
end)
