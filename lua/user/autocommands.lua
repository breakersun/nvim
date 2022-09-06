vim.cmd [[
  augroup _tabsize
  autocmd!
  autocmd FileType c setlocal shiftwidth=4 softtabstop=4 expandtab
  autocmd FileType cpp setlocal shiftwidth=4 softtabstop=4 expandtab
  autocmd FileType make set noexpandtab
  autocmd BufNewFile,BufRead *.h setlocal filetype=c
  autocmd FileType c,cpp,python,lua autocmd BufWritePre <buffer> %s/\s\+$//e
  augroup end
]]
