return {
  'mfussenegger/nvim-lint',
  event = 'BufReadPre',
  config = function()
    require('lint').linters_by_ft = {
      c = {'cppcheck',},
      markdown = {'markdownlint',},
      python = {'pylint', },
    }

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })

  end,
}
