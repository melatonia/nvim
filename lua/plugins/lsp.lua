-- lua/plugins/lsp.lua
return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed   = "",
          package_pending     = "",
          package_uninstalled = "",
        },
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = {
        "stylua",
        "black",
        "prettier",
        "clang-format",
        "shfmt",
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "clangd",
        "rust_analyzer",
        "html",
        "cssls",
        "ts_ls",
        "pyright",
        "bashls",
        "jsonls",
        "yamlls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
          },
        },
      })
    end,
  },
}
