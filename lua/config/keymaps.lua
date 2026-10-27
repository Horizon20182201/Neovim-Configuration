-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- 保存文件
map("n", "<C-s>", "<cmd>w<cr>", { noremap = true, desc = "Save file" })

-- 更好的缩进处理
map("v", "<", "<gv", { noremap = true, desc = "Unindent" })
map("v", ">", ">gv", { noremap = true, desc = "Indent" })

-- 窗口导航
map("n", "<C-h>", "<C-w>h", { noremap = true, desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { noremap = true, desc = "Go to down window" })
map("n", "<C-k>", "<C-w>k", { noremap = true, desc = "Go to up window" })
map("n", "<C-l>", "<C-w>l", { noremap = true, desc = "Go to right window" })
