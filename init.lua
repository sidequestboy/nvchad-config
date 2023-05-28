-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
if vim.g.neovide then
  vim.o.guifont = "FiraCode Nerd Font Mono:h14"
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_input_macos_alt_is_meta = true
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_animate_command_line = false
  vim.keymap.set("i", "<D-v>", "<C-r>*")
  vim.keymap.set("v", "<D-c>", "\"*y")
end

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
