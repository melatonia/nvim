-- lua/config/keymaps.lua

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- ── File tree ─────────────────────────────────────────────────────────
map("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle file tree" })

-- ── Telescope ─────────────────────────────────────────────────────────
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>",  { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>",   { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>",     { desc = "Find buffers" })

-- ── Buffer navigation ─────────────────────────────────────────────────
map("n", "<S-l>", "<cmd>bnext<cr>",     { desc = "Next buffer" })
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<leader>x", "<cmd>bdelete<cr>", { desc = "Close buffer" })

-- ── Scrolling (centered) ──────────────────────────────────────────────
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down centered" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up centered" })

-- ── Search ────────────────────────────────────────────────────────────
map("n", "<leader>nh", "<cmd>nohl<cr>", { desc = "Clear search highlights" })

-- ── LSP (only when LSP attaches to a buffer) ──────────────────────────
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local opts = { buffer = ev.buf }
    map("n", "gd",         vim.lsp.buf.definition,   vim.tbl_extend("force", opts, { desc = "Go to definition" }))
    map("n", "gr",         vim.lsp.buf.references,   vim.tbl_extend("force", opts, { desc = "Find references" }))
    map("n", "K",          vim.lsp.buf.hover,         vim.tbl_extend("force", opts, { desc = "Hover docs" }))
    map("n", "<leader>ca", vim.lsp.buf.code_action,   vim.tbl_extend("force", opts, { desc = "Code action" }))
    map("n", "<leader>rn", vim.lsp.buf.rename,        vim.tbl_extend("force", opts, { desc = "Rename symbol" }))
  end,
})

-- ── Move lines up/down ────────────────────────────────────────────────
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move line down" })
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move line up" })

-- ── Stay in indent mode ───────────────────────────────────────────────
map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

-- paste from system clipboard without indentation issues
map("i", "<C-v>", "<C-r>+", { desc = "Paste from clipboard" })
