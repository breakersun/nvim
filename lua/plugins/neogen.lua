return {
  'danymat/neogen',
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    local status_ok, neogen = pcall(require, 'neogen')

    if not status_ok then
      print('neogen is not installed')
      return
    end

    neogen.setup({ snippet_engine = "luasnip" })
  end,
  cmd = 'Neogen'
}
