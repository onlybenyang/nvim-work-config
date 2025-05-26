-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- macOS specific keymaps
if vim.fn.has("mac") == 1 then
  -- Command + C 复制到系统剪贴板
  vim.keymap.set({ "n", "v" }, "<D-c>", '"+y', { desc = "Copy to system clipboard" })
  -- Command + V 从系统剪贴板粘贴
  vim.keymap.set({ "n", "v" }, "<D-v>", '"+p', { desc = "Paste from system clipboard" })
  -- Command + A 全选
  vim.keymap.set({ "n", "v", "i" }, "<D-a>", "<ESC>ggVG", { desc = "Select all" })
  -- Command + Z 撤销
  vim.keymap.set({ "n", "v", "i" }, "<D-z>", "<ESC>u", { desc = "Undo" })
  -- Command + Shift + Z 重做
  vim.keymap.set({ "n", "v", "i" }, "<D-S-z>", "<ESC><C-r>", { desc = "Redo" })
  -- 删除后进入黑洞寄存器
  vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete to black hole register" })
  -- change后进入黑洞寄存器
  vim.keymap.set({ "n", "v" }, "c", '"_c', { desc = "Change to black hole register" })
  -- 按 g 后再按 p 返回 Buffer
  vim.keymap.set("n", "gp", "<cmd>e #<cr>", { desc = "Go back to previous buffer" })
end
