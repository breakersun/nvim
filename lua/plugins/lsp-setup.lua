return {
  'breakersun/lsp-setup.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'glepnir/lspsaga.nvim'
  },
  config = function()
    local _, setuptool = pcall(require, 'lsp-setup')
    if not _ then return end

    require("lspsaga").setup({})
    -- UI settings for lsp
    require('user.lsp-ui').setup()

    setuptool.setup({
      default_mappings = false,
      mappings = {
        gD = 'lua vim.lsp.buf.declaration()',
        --[[ gd = 'lua vim.lsp.buf.definition()', ]]
        gd = 'Lspsaga peek_definition',
       --[[ gt = 'lua vim.lsp.buf.type_definition()', ]]
        gi = 'lua vim.lsp.buf.implementation()',
        gr = 'lua vim.lsp.buf.references()',
        K = 'lua vim.lsp.buf.hover()',
        ['<C-k>'] = 'lua vim.lsp.buf.signature_help()',
        ['<leader>rn'] = 'lua vim.lsp.buf.rename()',
        ['<leader>ca'] = 'lua vim.lsp.buf.code_action()',
        --[[ ['<space>f'] = 'lua vim.lsp.buf.formatting()', ]]
        ['gl'] = 'lua vim.diagnostic.open_float()',
        ['[d'] = 'lua vim.diagnostic.goto_prev()',
        [']d'] = 'lua vim.diagnostic.goto_next()',
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
