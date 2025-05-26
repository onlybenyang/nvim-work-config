-- ~/.config/nvim/plugins/rust.lua
return {
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    ft = { "rust" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      vim.g.rustaceanvim = {
        server = {
          on_attach = function(_, bufnr)
            -- 自定义快捷键
            vim.keymap.set("n", "<leader>rr", "<cmd>RustLsp runnables<CR>", { buffer = bufnr })
            vim.keymap.set("n", "<leader>rd", "<cmd>RustLsp debuggables<CR>", { buffer = bufnr })
          end,
        },
        tools = {
          inlay_hints = {
            auto = true, -- 自动显示类型提示
          },
          formatter = {
            command = "rustfmt",
            args = { "--edition", "2021" }
          }
        },
      }
    end,
  }
}