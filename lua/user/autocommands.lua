vim.cmd [[
  augroup _tabsize
  autocmd!
  autocmd BufNewFile,BufRead *.h setlocal filetype=c
  autocmd FileType c,cpp,python,lua autocmd BufWritePre <buffer> %s/\s\+$//e
  augroup end
]]
