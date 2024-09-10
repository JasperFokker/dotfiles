vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.autoread = true
vim.opt.swapfile = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 999
vim.opt.cursorline = true

vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.keymap.set("n", "<C-n>", "<Cmd>Neotree reveal float<CR>", {})
vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", {})
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", {})
vim.keymap.set("i", "<C-S-j>", "<Esc>:m .+1<CR>==gi", {})
vim.keymap.set("i", "<C-S-k>", "<Esc>:m .-2<CR>==gi", {})
vim.keymap.set("v", "<C-S-k>", ":m '<-2<CR>gv=gv", {})
vim.keymap.set("v", "<C-S-j>", ":m '>+1<CR>gv=gv", {})
