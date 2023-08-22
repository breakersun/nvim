return {
  'phaazon/hop.nvim',
  enabled = true,
  branch = 'v2',
  config = function()
    local status_ok, hopnvim = pcall(require, 'hop')
    if not status_ok then
      return
    end

    hopnvim.setup { keys = 'etovxqpdygfblzhckisuran' }
    vim.api.nvim_set_keymap('n', 'f',
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>"
      , {})
    vim.api.nvim_set_keymap('n', 'F',
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>"
      , {})
    vim.api.nvim_set_keymap('n', 't',
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>"
      , {})
    vim.api.nvim_set_keymap('n', 'T',
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>"
      , {})
  end,
  event = "BufReadPost",
}
