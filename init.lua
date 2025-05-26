-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- 文件在外部被修改时自动重新加载
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  pattern = "*",
  command = "checktime",
})
-- augmentcode 插件工作空间
vim.g.augment_workspace_folders = {'/Users/noromacpro/work/Mexico-app-one-plus'}