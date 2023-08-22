require('lualine').setup({
    options = {
        disabled_filetypes = {'packer', 'NvimTree' },
    },
    sections = {
        lualine_b = {'branch', 'diff'},
    },
})
