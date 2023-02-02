return {
  'breakersun/lsp-setup.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'SmiteshP/nvim-navic',
    'glepnir/lspsaga.nvim',
  },
  config = function()
    local _, setuptool = pcall(require, 'lsp-setup')
    if not _ then return end

    local saga = require("lspsaga")
    saga.setup({
      ui = {border = "rounded"},
      symbol_in_winbar = { enable = false,}
    })
    -- UI settings for lsp
    require('user.lsp-ui').setup()

    setuptool.setup({
      default_mappings = false,
      mappings = {
        gD = 'lua vim.lsp.buf.declaration()',
        gd = 'Lspsaga peek_definition',
        gi = 'lua vim.lsp.buf.implementation()',
        gr = 'lua vim.lsp.buf.references()',
        gh = 'Lspsaga lsp_finder',
        K = 'Lspsaga hover_doc',
        ['<C-k>'] = 'lua vim.lsp.buf.signature_help()',
        ['gl'] = 'Lspsaga show_line_diagnostics',
        ['[d'] = 'Lspsaga diagnostic_jump_prev',
        [']d'] = 'Lspsaga diagnostic_jump_next',
        -- <leader>xx are defined in whichkey
        --[[ ['<leader>rn'] = 'lua vim.lsp.buf.rename()', ]]
        --[[ ['<leader>la'] = 'lua vim.lsp.buf.code_action()', ]]
        --[[ ['<space>f'] = 'lua vim.lsp.buf.formatting()', ]]
        --[[ ['<leader>q'] = 'lua vim.diagnostic.setloclist()' ]]
      },
      on_attach = function(client, bufnr)
        local navic = require('nvim-navic')
        if client.server_capabilities.documentSymbolProvider then
          navic.attach(client, bufnr)
        end
      end,
      servers = {
        sumneko_lua = {
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
            },
          },
        },
        clangd = require('lsp-setup.clangd_extensions').setup({})
      }
    })
  end
}
