-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd.colorscheme("catppuccin")

local set = vim.opt
set.shiftwidth = 2
set.smartindent = true
set.cindent = true
set.autoindent = true
set.expandtab = true
set.tabstop = 2
