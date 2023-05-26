-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.o.relativenumber = true;
vim.o.colorcolumn = "80"
vim.o.nrformats = vim.o.nrformats .. ",unsigned"
vim.g['prettier#autoformat'] = 1
vim.g['prettier#autoformat_require_pragma'] = 0
vim.g.matchup_matchparen_enabled = 0

-- global
P = function(v)
  print(vim.inspect(v))
  return v
end
