local function augroup(name)
  return vim.api.nvim_create_augroup("user_" .. name, { clear = true })
end

--[[ -- Highlight on yank ]]
--[[ vim.api.nvim_create_autocmd("TextYankPost", { ]]
--[[   group = augroup("highlight_yank"), ]]
--[[   callback = function() ]]
--[[     vim.highlight.on_yank() ]]
--[[   end, ]]
--[[ }) ]]
--
vim.cmd [[
  autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup=(vim.fn['hlexists']('HighlightedyankRegion') > 0 and 'HighlightedyankRegion' or 'IncSearch'), timeout=900}
]]

vim.cmd [[
  augroup _tabsize
  autocmd!
  autocmd FileType c setlocal shiftwidth=4 softtabstop=4 expandtab
  autocmd FileType cpp setlocal shiftwidth=4 softtabstop=4 expandtab
  autocmd FileType make set noexpandtab
  autocmd FileType markdown nmap <buffer><silent> <leader>mp :call mdip#MarkdownClipboardImage()<CR>
  autocmd BufNewFile,BufRead *.h setlocal filetype=c
  autocmd FileType c,cpp,python,lua,markdown autocmd BufWritePre <buffer> %s/\s\+$//e
  autocmd BufEnter,FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
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

vim.cmd [[
  augroup _presenting_markdown
  autocmd!
  au FileType markdown let b:presenting_slide_separator = '\v(^|\n)\ze#{1,2}[^#]'
  augroup end
]]

