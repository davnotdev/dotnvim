-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
    lua = { require("formatter.filetypes.lua").stylua },
    rust = { require("formatter.filetypes.rust").rustfmt },

    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace,
      -- Remove trailing whitespace without 'sed'
      -- require("formatter.filetypes.any").substitute_trailing_whitespace,
    }
  }
}

vim.keymap.set("n", "<leader>lf", ":Format<CR>")
