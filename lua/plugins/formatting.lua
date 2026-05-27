-- lua/plugins/formatting.lua

return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      lua        = { "stylua" },
      python     = { "black" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      html       = { "prettier" },
      css        = { "prettier" },
      json       = { "prettier" },
      yaml       = { "prettier" },
      markdown   = { "prettier" },
      c          = { "clang_format" },
      cpp        = { "clang_format" },
      rust       = { "rustfmt" },
      sh         = { "shfmt" },
    },
    format_on_save = {
      timeout_ms = 2000,
      lsp_format = "fallback",
    },
  },
}
