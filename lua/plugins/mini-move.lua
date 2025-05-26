return {
  "echasnovski/mini.move",
  version = false, -- 使用 main 分支最新版（网页1建议）
  config = function()
    local mini_move = require("mini.move")
    mini_move.setup({
      -- 移动后是否重新缩进（仅垂直移动生效）
      reindent_linewise = true,
      -- 光标跟随选区移动
      cursor_position = "follow",
    })
  end,
}
