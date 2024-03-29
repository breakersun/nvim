
return {
  'kevinhwang91/nvim-ufo',
  dependencies = 'kevinhwang91/promise-async',
  event = "BufReadPost",
  config = function ()
    local status_ok, ufo = pcall(require, 'ufo')
    if not status_ok then return end

    ufo.setup({
        provider_selector = function(bufnr, filetype, buftype)
            return { 'treesitter', 'indent' }
        end
    })

    vim.o.foldcolumn = '0'
    vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true
    vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

    -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
    vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
  end
}
