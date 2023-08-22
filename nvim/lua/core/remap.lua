vim.g.mapleader = ' '
local opt = { noremap = true}
-- local opt = { noremap = true, silent = true }

-- Easy write and quit
vim.keymap.set('n', '<Leader>w', ':w<CR>', opt)
vim.keymap.set('n', '<Leader>q', ':q<CR>', opt)

-- Easy yank all or delete all
vim.keymap.set('n', '<Leader>yy', ':%y+<CR>', opt)
vim.keymap.set('n', '<Leader>yd', ':%d<CR>', opt)
vim.keymap.set('n', '<Leader>yp', ':let @+ = expand("%:p")<CR>', opt)
vim.keymap.set('n', 'Y', 'y$', opt)
vim.keymap.set('n', '<Leader>yu', 'mz0y$`z')

-- tmux-navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opt)
vim.keymap.set('n', '<C-j>', '<C-w>j', opt)
vim.keymap.set('n', '<C-k>', '<C-w>k', opt)
vim.keymap.set('n', '<C-l>', '<C-w>l', opt)

-- Easy move between tabs
vim.keymap.set('n', '<Leader>k', ':tabnex, optt<CR>', opt)
vim.keymap.set('n', '<Leader>j', ':tabpreviou, opts<CR>', opt)

-- Reload files
vim.keymap.set('n', '<Leader>0', ":e | :echo expand('%:p')<CR>", opt)
vim.keymap.set('n', '<Leader>h', ":!start explorer /select,%:p<CR><CR>", {silent = true})

-- Easy move between buffers
-- vim.keymap.set('n', '<Leader>o', ':bn<CR>')
-- vim.keymap.set('n', '<Leader>i', ':bp<CR>')
-- vim.keymap.set('n', '<Leader>p', ':bd<CR>')

-- Easy move between beginnig and end of lines
--vim.keymap.set('n', '<Leader>h', '^')
--vim.keymap.set('n', '<Leader>l', '$')

-- Show hidden characters
vim.keymap.set('n', '<F9>', ":set listchars=tab:>-,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»<CR>:set list<CR>" , opt)
vim.keymap.set('n', '<F10>', ":set list!<CR>" , opt)

-- Enable/Disable Auto-comments
vim.keymap.set('n', '<Leader>dc', ':setlocal formatoptions-=cro<CR>', opt)
vim.keymap.set('n', '<Leader>ec', ':setlocal formatoptions=cro<CR>', opt)

-- ThePrimeagen Keymaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opt)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opt)

vim.keymap.set("n", "J", "mzJ`z", opt)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opt)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opt)

vim.keymap.set("n", "n", "nzzzv", opt)
vim.keymap.set("n", "N", "Nzzzv", opt)

vim.keymap.set("x", "<Leader>p", "\"_dP", opt)

vim.keymap.set("n", "<Leader>D", "\"_d")
vim.keymap.set("v", "<Leader>D", "\"_d")

-- Open init.lua 'V read about vim marks for more reference
-- mV to mark 

-- Spell check        z=
vim.keymap.set('n', '<Leader>es', ':setlocal spell spelllang=es<CR>', opt)
vim.keymap.set('n', '<Leader>ds', ':setlocal nospell<CR>', opt)

-- Replace shortcut  \c ignore case   \C use uppercase   gci ingnore case
vim.keymap.set('n', 'S', ':%s//gci<left><left><left><left>', opt)
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opt)

-- Disable keymap
-- :lua require('cmp').setup.buffer { enabled = false }
-- :LspStop

-- relative path
-- :let @+ = expand("%")

-- full path
-- :let @+ = expand("%:p")

-- just filename
-- :let @+ = expand("%:t")
