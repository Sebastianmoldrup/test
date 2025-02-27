return {
  -- Remember to do :Copilot auth to authenticate before activating
  "zbirenbaum/copilot.lua",
  opts = {
    suggestion = { enabled = false },
    panel = { enabled = false },
    filetypes = {
      ["*"] = true,
    },
  },
}
