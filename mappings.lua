---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-h>"] = { ":<C-U>TmuxNavigateLeft<CR>", opts = { silent = true } },
    ["<C-j>"] = { ":<C-U>TmuxNavigateDown<CR>", opts = { silent = true } },
    ["<C-k>"] = { ":<C-U>TmuxNavigateUp<CR>", opts = { silent = true } },
    ["<C-l>"] = { ":<C-U>TmuxNavigateRight<CR>", opts = { silent = true } },
    ["<C-s>"] = {
      function()
        require("auto-session.session-lens").search_session()
      end, opts = { silent = true }
    },
    ["<leader>gg"] = { "<cmd>0G<cr>", opts = { silent = true } },
  },
  i = {
    ["<C-y>"] = { "<C-o><C-y>", opts = { silent = true } },
    ["<C-e>"] = { "<C-o><C-e>", opts = { silent = true } },
  },
}

return M
