return {
  'ojroques/nvim-osc52',
  cond = function ()
    local _linux = vim.fn.has('linux')
    return _linux
  end,
  --[[ cond = vim.fn.has('win32'), ]]
  config = function()
    require('osc52').setup()
    local function copy()
      if vim.v.event.operator == 'y' and vim.v.event.regname == '' then
        require('osc52').copy_register('"')
      end
    end

    vim.api.nvim_create_autocmd('TextYankPost', { callback = copy })
  end
}
