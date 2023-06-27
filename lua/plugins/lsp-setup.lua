return {
  'junnplus/lsp-setup.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'SmiteshP/nvim-navic',
  },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local _, setuptool = pcall(require, 'lsp-setup')
    if not _ then return end

    -- UI settings for lsp
    require('user.lsp-ui').setup()

    vim.lsp.set_log_level("off")

    setuptool.setup({
      default_mappings = false,
      mappings = {
        gD = 'lua vim.lsp.buf.declaration()',
        gd = 'lua vim.lsp.buf.definition()',
        gi = 'lua vim.lsp.buf.implementation()',
        gr = 'lua vim.lsp.buf.references()',
        ['<C-k>'] = 'lua vim.lsp.buf.signature_help()',
        -- <leader>xx are defined in whichkey
        --[[ ['<leader>rn'] = 'lua vim.lsp.buf.rename()', ]]
        --[[ ['<leader>la'] = 'lua vim.lsp.buf.code_action()', ]]
        --[[ ['<space>f'] = 'lua vim.lsp.buf.formatting()', ]]
        --[[ ['<leader>q'] = 'lua vim.diagnostic.setloclist()' ]]
        -- remember there are still some keys are defined in lsp-saga
      },
      on_attach = function(client, bufnr)
        local navic = require('nvim-navic')
        if client.server_capabilities.documentSymbolProvider then
          navic.attach(client, bufnr)
        end

        -- only enable inlay_hints for insert mode
        vim.api.nvim_create_augroup("lsp_augroup", { clear = true })
        vim.api.nvim_create_autocmd("InsertEnter", {
          buffer = bufnr,
          callback = function() vim.lsp.buf.inlay_hint(bufnr, true) end,
          group = "lsp_augroup",
        })
        vim.api.nvim_create_autocmd("InsertLeave", {
          buffer = bufnr,
          callback = function() vim.lsp.buf.inlay_hint(bufnr, false) end,
          group = "lsp_augroup",
        })

      end,
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              runtime = { version = 'LuaJIT', },
              diagnostics = { globals = { 'vim' }, },
              -- time-consuming : this could index nvim-lua lib everytime
              workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
              },
              telemetry = { enable = false, },
              hint = {
                enable = true,
                arrayIndex = "Auto",
                await = true,
                paramName = "All",
                paramType = true,
                semicolon = "SameLine",
                setType = false,
              },
            },
          },
        },
        clangd = {}
      },
    -- Configuration of LSP inlay hints
    --[[ inlay_hints = { enabled = true, } ]]
    })
  end
}
