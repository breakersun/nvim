vim.cmd [[
  augroup _tabsize
  autocmd!
  autocmd FileType c setlocal shiftwidth=4 softtabstop=4 expandtab
  autocmd FileType cpp setlocal shiftwidth=4 softtabstop=4 expandtab
  autocmd FileType make set noexpandtab
  autocmd FileType markdown nmap <buffer><silent> <leader>mp :call mdip#MarkdownClipboardImage()<CR>
  autocmd BufNewFile,BufRead *.h setlocal filetype=c
  autocmd FileType c,cpp,python,lua autocmd BufWritePre <buffer> %s/\s\+$//e
  augroup end
]]

vim.cmd [[
    function! s:insert_gates()
      let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
      execute "normal! i#ifndef " . gatename
      execute "normal! o#define " . gatename . " "
      execute "normal! Go#endif /* " . gatename . " */"
      normal! kk
    endfunction
    autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()
    command! Cheader call <SID>insert_gates()
]]
