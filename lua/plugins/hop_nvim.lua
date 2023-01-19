return {
  'phaazon/hop.nvim',
  branch = 'v2',
  config = function()
    local status_ok, hopnvim = pcall(require, 'hop')
    if not status_ok then
      return
    end

    hopnvim.setup { keys = 'etovxqpdygfblzhckisuran' }
  end,
  keys = {
    { "f",
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
      desc = 'forword with hop' },
    { "F",
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>" },
    { "t",
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>" },
    { "T",
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>" },
    { "S", "<cmd>HopChar2<CR>" }
  }
}
