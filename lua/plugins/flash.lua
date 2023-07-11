return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    enabled = false,
    vscode = true,
    ---@type Flash.Config
    opts = {
      modes = { char = {enabled = false} }
    },
    config = function ()
      -- to use this, make sure to set `opts.modes.char.enabled = false`
      require("flash").setup(opts)
      local Config = require("flash.config")
      local Char = require("flash.plugins.char")
      for _, motion in ipairs({ "f", "t", "F", "T" }) do
        vim.keymap.set({ "n", "x", "o" }, motion, function()
          require("flash").jump(Config.get({
            mode = "char",
            search = {
              mode = Char.mode(motion),
              max_length = 1,
            },
          }, Char.motions[motion]))
        end)
      end
    end,
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "Treesitter Search",
      },
    },
  },
}
