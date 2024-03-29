require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or 'all'
  ensure_installed = { 'c', 'lua', 'rust', 'vim', 'python', 'latex', 'html'},
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

