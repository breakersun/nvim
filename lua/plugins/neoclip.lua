return {
  "AckslD/nvim-neoclip.lua",
  requires = {
    {'kkharji/sqlite.lua', module = 'sqlite'},
  },
  config = function()
    require('neoclip').setup({
      filter = function(data)
        return data.event.operator ~= ('d' or 'c')
      end,
      preview = false,
    })
  end,
  event = 'VeryLazy',
}
