local M = {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  opts = {
    suggestion = {
      enabled = true
    },
    panel = {
      enabled = false
    },
    ft_disable = {
      "markdown", "terraform", "cpp"
    },
  },
}
return M
