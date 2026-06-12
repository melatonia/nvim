-- lua/config/options.lua

local opt = vim.opt

-- ── Line numbers ──────────────────────────────────────────────────────
opt.number = true
opt.relativenumber = true

-- ── Indentation ───────────────────────────────────────────────────────
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- ── Appearance ────────────────────────────────────────────────────────
opt.termguicolors = true
opt.signcolumn = "yes" -- always show, prevents layout shifting
opt.cursorline = true -- highlight current line
opt.scrolloff = 8 -- keep 8 lines above/below cursor
opt.wrap = false -- no line wrapping

-- ── Search ────────────────────────────────────────────────────────────
opt.ignorecase = true
opt.smartcase = true -- case-sensitive only if you type uppercase
opt.hlsearch = false -- don't keep highlights after searching

-- ── Behavior ──────────────────────────────────────────────────────────
opt.splitright = true -- vertical splits open on the right
opt.splitbelow = true -- horizontal splits open below
opt.undofile = true -- persistent undo history across sessions
opt.clipboard = "unnamedplus" -- sync with system clipboard
opt.mouse = "a" -- mouse support in all modes
opt.updatetime = 250 -- faster UI response (default 4000ms)
opt.timeoutlen = 300 -- faster which-key popup (default 1000ms)
opt.confirm = true -- ask to save instead of erroring on :q

-- ── Editing ───────────────────────────────────────────────────────────
opt.virtualedit = "block" -- allow cursor past end-of-line in visual block

-- ── Filetype overrides ────────────────────────────────────────────────
vim.api.nvim_create_autocmd("FileType", {
	pattern = "rust",
	callback = function()
		vim.opt_local.tabstop = 4
		vim.opt_local.shiftwidth = 4
	end,
})
