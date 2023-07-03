local M = {
  "morhetz/gruvbox",
  commit = "bf2885a95efdad7bd5e4794dd0213917770d79b7",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

M.name = "gruvbox"
function M.config()
  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

return M
