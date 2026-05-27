-- lua/config/options.lua

local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes" -- always show, prevents layout shifting
opt.cursorline = true -- highlight current line
opt.scrolloff = 8 -- keep 8 lines above/below cursor when scrolling
opt.wrap = false -- no line wrapping

-- Search
opt.ignorecase = true
opt.smartcase = true -- case-sensitive only if you type uppercase
opt.hlsearch = false -- don't keep highlights after searching

-- Behavior
opt.splitright = true -- new vertical splits open on the right
opt.splitbelow = true -- new horizontal splits open below
opt.undofile = true -- persistent undo history across sessions
opt.clipboard = "unnamedplus" -- sync with system clipboard
opt.mouse = "a" -- mouse support in all modes
opt.updatetime = 250 -- faster UI response (default is 4000ms)
