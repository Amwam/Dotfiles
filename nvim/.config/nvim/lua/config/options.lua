-- Options are automatically loaded before lazy.nvim startup
-- Default options: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- Use 4-space indentation (LazyVim defaults to 2)
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- Keep more context lines around cursor (LazyVim defaults to 4)
vim.opt.scrolloff = 10

-- No swapfile
vim.opt.swapfile = false

-- Show live substitution preview in a split (LazyVim defaults to "nosplit")
vim.opt.inccommand = "split"
