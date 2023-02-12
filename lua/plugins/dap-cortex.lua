return {
  'jedrzejboczar/nvim-dap-cortex-debug',
  requires = 'mfussenegger/nvim-dap',

  config = function ()
    require('dap-cortex-debug').setup {
        debug = true,
        extension_path = 'C:/Users/403283/scoop/apps/vscode/current/data/extensions/marus25.cortex-debug-1.6.10/',
    }

    --[[ local dap_cortex_debug = require('dap-cortex-debug') ]]
    --[[ require('dap').configurations.c = { ]]
    --[[     dap_cortex_debug.jlink_config { ]]
    --[[         name = 'Example debugging with jlink', ]]
    --[[         interface = 'swd', ]]
    --[[         toolchainPath = '', ]]
    --[[         cwd = '${workspaceFolder}', ]]
    --[[         executable = '${workspaceFolder}/build/tianmei_z_charging_case.elf', ]]
    --[[         device = "STM32f031k6", ]]
    --[[     }, ]]
    --[[ } ]]
    local dap_cortex_debug = require('dap-cortex-debug')
    require('dap').configurations.c = {
        {
            name = 'Example debugging with OpenOCD',
            type = 'cortex-debug',
            request = 'launch',
            servertype = 'jlink',
            --[[ serverpath = 'openocd', ]]
            gdbPath = 'arm-none-eabi-gdb',
            --[[ toolchainPath = '/usr/bin', ]]
            toolchainPrefix = 'arm-none-eabi',
            runToEntryPoint = 'main',
            swoConfig = { enabled = false },
            showDevDebugOutput = false,
            --[[ gdbTarget = 'localhost:3333', ]]
            cwd = '${workspaceFolder}',
            executable = '${workspaceFolder}/build/tianmei_z_charging_case',
            device = "STM32f031k6",

            --[[ configFiles = { '${workspaceFolder}/build/openocd/connect.cfg' }, ]]
            --[[ rttConfig = { ]]
            --[[     address = 'auto', ]]
            --[[     decoders = { ]]
            --[[         { ]]
            --[[             label = 'RTT:0', ]]
            --[[             port = 0, ]]
            --[[             type = 'console' ]]
            --[[         } ]]
            --[[     }, ]]
            --[[     enabled = true ]]
            --[[ }, ]]
        }
    }
  end
}
