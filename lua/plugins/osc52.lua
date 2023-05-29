return {
  'ojroques/nvim-osc52',
  cond = vim.fn.has('win32') and false or true,
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
