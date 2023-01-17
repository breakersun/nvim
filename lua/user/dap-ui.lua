local _status_ok, dapui = pcall(require, "dapui")
if not _status_ok then
  return
end

dapui.setup()
