return {
  'kyazdani42/nvim-tree.lua',
  dependencies = 'nvim-tree/nvim-web-devicons',
  tag = 'nightly',
  config = function()
    local nvim_tree = require("nvim-tree")
    local nvim_tree_config = require("nvim-tree.config")
    local tree_cb = nvim_tree_config.nvim_tree_callback

    nvim_tree.setup {
      disable_netrw = true,
      hijack_netrw = true,
      open_on_tab = false,
      hijack_cursor = false,
      update_cwd = true,
      diagnostics = {
        enable = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
      },
      git = {
        enable = true,
        ignore = true,
        timeout = 500,
      },
      view = {
        adaptive_size = true,
        width = 30,
        hide_root_folder = false,
        side = "right",
        mappings = {
          custom_only = false,
          list = {
            { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
            { key = "h", cb = tree_cb "close_node" },
            { key = "v", cb = tree_cb "vsplit" },
          },
        },
        number = false,
        relativenumber = false,
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    }

    function open_nvim_tree(data)
      -- buffer is a [No Name]
      local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
      -- buffer is a directory
      local directory = vim.fn.isdirectory(data.file) == 1

      if not no_name and not directory then
        return
      end
      -- change to the directory
      if directory then
        vim.cmd.cd(data.file)
      end

      -- open the tree
      local status_ok, nvim_tree = pcall(require, "nvim-tree.api")
      if not status_ok then return end
      nvim_tree.tree.open()
    end

    vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
  end
}
