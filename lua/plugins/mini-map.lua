return {
  "echasnovski/mini.map",
  version = false,
  config = function()
    local minimap = require('mini.map')
    minimap.setup({
      -- Customize the minimap appearance
      window = {
        -- Set the side of the screen for the minimap
        side = 'right',
        -- Width of the minimap
        width = 10,
        -- Show the minimap only for certain filetypes
        show_integration_count = false,
      },
      -- Symbols to be used in the minimap
      symbols = {
        -- Use simple ASCII symbols for better compatibility
        encode = minimap.gen_encode_symbols.dot('4x2'),
      },
      -- Configure how the minimap integrates with other plugins
      integrations = {
        minimap.gen_integration.builtin_search(),
        minimap.gen_integration.diagnostic(),
        minimap.gen_integration.gitsigns(),
      },
    })
    
    -- Key mappings for controlling the minimap
    vim.keymap.set('n', '<Leader>mm', minimap.toggle, { desc = 'Toggle minimap' })
    vim.keymap.set('n', '<Leader>mc', minimap.close, { desc = 'Close minimap' })
    vim.keymap.set('n', '<Leader>mf', minimap.toggle_focus, { desc = 'Toggle minimap focus' })
  end,
  -- Add dependencies if needed
  dependencies = {
    -- Optional: Add gitsigns as a dependency if you want git integration
    "lewis6991/gitsigns.nvim",
  },
}