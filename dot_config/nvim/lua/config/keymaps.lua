-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Triple-ESC to exit terminal mode (works for all terminals, not just snacks)
vim.keymap.set("t", "<Esc><Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
