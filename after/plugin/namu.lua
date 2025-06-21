require("namu").setup({
  namu_symbols = {
    enable = true,
    options = {
      row_position = "center",
      AllowKinds = {
        -- By defualt, structs are not shown.
        -- FIXME: Should be fixed upstream soon.
        rust = {
          "Function",
          "Method",
          "Class",
          "Struct",
          "Module",
          "Property",
          "Variable",
          "Interface",
        },
      },
      window = {
        min_width = 90
      },
    },
  },
  ui_select = { enable = false },
})

vim.keymap.set("n", "<leader>ls",":Namu symbols<cr>" , {
  desc = "Jump to LSP symbol",
  silent = true,
})
vim.keymap.set("n", "<leader>lq",":Namu watchtower<cr>" , {
  desc = "Jump to buffer LSP symbol",
  silent = true,
})

-- To be honest, I prefer telescope for workspace search
--[[
vim.keymap.set("n", "<leader>lw", ":Namu workspace<cr>", {
  desc = "LSP Symbols - Workspace",
  silent = true,
})
--]]
