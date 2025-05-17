local opts = { silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", opts)

-- Window navigation override
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Navigate left window", noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Navigate bottom window", noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Navigate top window", noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Navigate right window" })

