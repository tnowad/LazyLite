local M = {}

function M.init()
  require("lazylite.config.autocmds")
  require("lazylite.config.keymaps")
  require("lazylite.config.options")
end

return M
