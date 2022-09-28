local _, setuptool = pcall(require, 'lsp-setup')
if not _ then return end

-- UI settings for lsp
require('user.lsp-ui').setup()

setuptool.setup({
    default_mappings = false,
    mappings = {
        gD = 'lua vim.lsp.buf.declaration()',
        gd = 'lua vim.lsp.buf.definition()',
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
        ['<leader>q'] = 'lua vim.diagnostic.setloclist()'
    },
    servers = {
        sumneko_lua = {
            settings = {
                Lua = {
                    runtime = { version = 'LuaJIT', },
                    diagnostics = { globals = { 'vim' }, },
                    -- time-consuming : this could index nvim-lua lib everytime
                    -- workspace = { library = vim.api.nvim_get_runtime_file("", true), },
                    telemetry = { enable = false, },
                },
            },
        },
        clangd = {},
    }
})
