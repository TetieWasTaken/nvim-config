-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- file explorer
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- lualine
require('lualine').setup {
  options = { theme = 'dracula' }
}

-- bufferline
require("bufferline").setup()

-- theme
require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = true,
})

vim.cmd.colorscheme "catppuccin"

-- line numbers
vim.opt.number = true

-- Automatically run :Alpha on startucp
vim.cmd [[ autocmd VimEnter * silent! Alpha ]]

-- auto close brackets
require("nvim-autopairs").setup()
