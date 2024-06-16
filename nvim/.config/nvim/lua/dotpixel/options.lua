-- globals
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.base16_colorspace = 256

-- options
local opt = vim.opt

-- general
opt.inccommand = "split"
opt.smartcase = true
opt.ignorecase = true
opt.termguicolors = true
opt.wrap = true
opt.cursorline = true

-- line numbers 
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"

-- scrolloff
opt.scrolloff = 10

-- tabs, indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.smartindent = true

-- clippy
opt.clipboard = "unnamedplus"

-- splittin
opt.splitbelow = true
opt.splitright = true
