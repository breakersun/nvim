local status, wilder
if not vim.g.vscode then
  status, wilder = pcall(require, 'wilder')
  if not status then
    return
  end
else
    return
end


wilder.set_option('renderer', wilder.popupmenu_renderer(
  wilder.popupmenu_border_theme({
    highlighter = wilder.basic_highlighter(),
    min_width = '100%', -- minimum height of the popupmenu, can also be a number
    min_height = '50%', -- to set a fixed height, set max_height to the same value
    reverse = 0,        -- if 1, shows the candidates from bottom to top
  })
))

wilder.setup({modes = {':', '/', '?'}})
