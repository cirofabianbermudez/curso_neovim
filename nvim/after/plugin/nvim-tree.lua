vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    diagnostics = {
        -- enable = true,
    },
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
    view = {
        width = 40,
        float = {
            enable = false,
        },
    },
})


vim.keymap.set('n', '<Leader>nt', ':NvimTreeFindFileToggle<CR>')
