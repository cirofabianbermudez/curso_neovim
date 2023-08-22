require'bufferline'.setup {
    auto_hide = false,
    animation = false,
    insert_at_end = true,
    icons = {
        separator = {left = '', right = ''},
    },
}

-- barbar remaps
vim.keymap.set('n', '<Leader>i', ':BufferPrevious<CR>')
vim.keymap.set('n', '<Leader>o', ':BufferNext<CR>')
vim.keymap.set('n', '<Leader>c', ':BufferClose<CR>')
vim.keymap.set('n', '<Leader>u', ':BufferOrderByBufferNumber<CR>')
