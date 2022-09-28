local _, setuptool = pcall(require, 'lsp-setup')
if not _ then return end

setuptool.setup({
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
    }
})
