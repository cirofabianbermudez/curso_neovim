-- To see more options run :he option-list

-- Basic configurations
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.showmatch = true
vim.opt.cursorline = true
vim.opt.encoding = 'utf-8'
vim.opt.termguicolors = true
-- vim.opt.cursorcolumn = true
vim.opt.ignorecase = true
-- vim.opt.relativenumber = true

-- Optional for compatibility
vim.opt.showcmd = true
vim.cmd('syntax enable')
vim.opt.laststatus = 2
vim.opt.ruler = true
vim.opt.compatible = false

-- Use system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Tabs configuration
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Custom autocomplete commands view
vim.opt.wildmode = 'longest,list,full'

-- Fix splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Line wrap
vim.opt.wrap = false
-- vim.opt.wrap = true

-- Serch configs
vim.opt.hlsearch = true
vim.opt.incsearch = true

--vim.opt.scrolloff = 8
vim.opt.colorcolumn = "1000"
vim.opt.updatetime = 50
