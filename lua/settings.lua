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

-- Vim config
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
