
local _status_ok, dap_python = pcall(require, 'dap-python')
if not _status_ok then
  return
end

dap_python.setup('python')

--[[ table.insert(require('dap').configurations.python, { ]]
--[[   type = 'python', ]]
--[[   request = 'launch', ]]
--[[   name = 'My custom launch configuration', ]]
--[[   program = '${file}', ]]
--[[   -- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings ]]
--[[ }) ]]
