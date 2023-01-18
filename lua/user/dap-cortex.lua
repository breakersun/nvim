require('dap-cortex-debug').setup {
    debug = false,  -- log debug messages
    extension_path = 'D:/VSCode/data/extensions/marus25.cortex-debug-*/',
    lib_extension = nil, -- tries auto-detecting, e.g. 'so' on unix
}

local dap_cortex_debug = require('dap-cortex-debug')
require('dap').configurations.c = {
    dap_cortex_debug.jlink_config {
        name = 'Example debugging with jlink',
        interface = 'swd',
        toolchainPath = '',
        cwd = '${workspaceFolder}',
        executable = '${workspaceFolder}/build/ceto_STM32L011F3U6TR.elf',
        device = "STM32L011K4",
    },
}
