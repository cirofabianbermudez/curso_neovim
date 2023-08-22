local opt = { noremap = true}
vim.keymap.set('n', 'ññ', '/(<>)<CR><Esc>ca(', opt)
vim.keymap.set('i', 'ññ', '<Esc>/(<>)<CR><Esc>ca(', opt)

-- Easy motion in wrap lines
vim.cmd[[autocmd BufRead,BufNewFile *.tex set filetype=tex]]
vim.cmd[[autocmd FileType tex,latex set wrap linebreak]]
vim.cmd[[autocmd FileType tex,latex setlocal spell spelllang=es]]
vim.keymap.set('n', '<A-j>', 'gj', opt)
vim.keymap.set('n', '<A-k>', 'gk', opt)
vim.keymap.set('n', '<A-h>', 'h', opt)
vim.keymap.set('n', '<A-l>', 'l', opt)


-- vim.cmd[[autocmd FileType tex inoremap -bf \textbf{}<Space>(<>)<Esc>T{i]]
-- vim.cmd[[autocmd FileType tex inoremap -em \emph{}<Space>(<>)<Esc>T{i]]
-- vim.cmd[[autocmd FileType tex inoremap -c \cite{}<Space>(<>)<Esc>T{i]]
-- vim.cmd[[autocmd FileType tex inoremap -r \ref{}<Space>(<>)<Esc>T{i]]

-- Math
-- vim.cmd[[autocmd FileType tex inoremap -m $$<Space>(<>)<Esc>T$;i]]
-- vim.cmd[[autocmd FileType tex inoremap -u ^{}<Space>(<>)<Esc>T{i]]
-- vim.cmd[[autocmd FileType tex inoremap -d _{}<Space>(<>)<Esc>T{i]]
-- vim.cmd[[autocmd FileType tex inoremap -sq \sqrt{}<Space>(<>)<Esc>T{i]]
-- vim.cmd[[autocmd FileType tex inoremap -fr \frac{}{(<>)}<Space>(<>)<Esc>T{;i]]

-- Compile
vim.keymap.set('n', '<F6>', ':! pdflatex main.tex > logs.txt<CR>', opt)
vim.keymap.set('n', '<F5>', ':! compile.sh<CR>', opt)

-- vim.keymap.set('n', '<F8>', ':set wrap linebreak', opt)



