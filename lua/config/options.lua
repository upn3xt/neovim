-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
vim.cmd([[highlight NormalNC guibg=NONE ctermbg=NONE]])
vim.cmd([[highlight Pmenu guibg=NONE ctermbg=NONE]]) -- optional: popup menu
vim.cmd([[highlight EndOfBuffer guibg=NONE ctermbg=NONE]])
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.filetype.add({
  extension = {
    c3 = "c3",
  },
})
