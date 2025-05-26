return {
  {
    --"ishan9299/nvim-solarized-lua",
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      -- 设置背景为亮色
      -- vim.o.background = "light"
      -- 应用 Solarized Light 主题
      -- vim.cmd([[colorscheme solarized]])
      vim.g.everforest_enable_italic = true
      vim.g.everforest_background = "soft"
      vim.cmd.colorscheme("everforest")
      -- 自定义光标颜色
      vim.cmd([[
        " 普通模式下的光标颜色
        highlight Cursor guifg=white guibg=#00ff00
        " 插入模式下的光标颜色
        highlight iCursor guifg=white guibg=#00ffff
        " 设置光标样式
        set guicursor=n-v-c:block-Cursor
        set guicursor+=i:ver100-iCursor
        set guicursor+=n-v-c:blinkon0
        set guicursor+=i:blinkwait10
      ]])
    end,
  },
}
