-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Tab navigation with up/down arrows
vim.keymap.set("n", "<up>", "<cmd>tabnext<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<down>", "<cmd>tabprevious<CR>", { desc = "Prev Tab" })

-- Jump list navigation with left/right arrows
vim.keymap.set("n", "<left>", "<C-O>", { desc = "Jump Back" })
vim.keymap.set("n", "<right>", "<C-I>", { desc = "Jump Forward" })
