return {
  'jedrzejboczar/nvim-dap-cortex-debug',
  requires = 'mfussenegger/nvim-dap',

  config = function()
    require('dap-cortex-debug').setup {
      debug = false,
      extension_path = 'C:/Users/403283/scoop/apps/vscode/current/data/extensions/marus25.cortex-debug-1.6.10',
    }

    local dap_cortex_debug = require('dap-cortex-debug')
    require('dap').configurations.c = {
      dap_cortex_debug.jlink_config {
        name = 'Example debugging with jlink',
        request = 'launch',
        interface = 'swd',
        toolchainPath = '',
        serverpath = 'JLinkGDBServerCL.exe',
        cwd = '${workspaceFolder}',
        executable = '${workspaceFolder}/build/tianmei_z_charging_case.elf',
        device = "STM32f031k6",
      },
    }
  end
}
