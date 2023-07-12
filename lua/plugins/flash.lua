return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    enabled = true,
    vscode = true,
    ---@type Flash.Config
    opts = {
      modes = {
        char = {
          -- for hop.nvim like jump with y combine
          jump_labels = true,
          -- disable , and ; keys
          keys = { "f", "F", "t", "T" },
          ---@alias Flash.CharActions table<string, "next" | "prev" | "right" | "left">
          char_actions = function(motion)
            return {
              --[[ [";"] = "next", -- set to `right` to always go right ]]
              --[[ [","] = "prev", -- set to `left` to always go left ]]
              -- clever-f style
              [motion:lower()] = "next",
              [motion:upper()] = "prev",
            }
          end,
          search = { wrap = false },
          highlight = { backdrop = true },
          jump = { register = false },
        },
      },
    },

    keys = {
      {
        "<leader><Space>",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      {
        "<leader>,",
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
