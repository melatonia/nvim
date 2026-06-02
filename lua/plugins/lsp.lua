-- lua/plugins/lsp.lua

return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "",
          package_pending = "",
          package_uninstalled = "",
        },
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = {
        "stylua", -- lua formatter
        "shfmt", -- shell formatter
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
        "lua_ls",    -- lua (neovim config)
        "bashls",    -- bash / sh
        "rust_analyzer", -- rust
        "jsonls",    -- json
        "yamlls",    -- yaml
        "taplo",     -- toml
        "marksman",  -- markdown
      },
      -- mason handles automatic vim.lsp.enable() for these
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- lua_ls config (Mason installs it, we just configure it)
      vim.lsp.config["lua_ls"] = {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
          },
        },
      }

      -- rust-analyzer: managed by rustup, not Mason
      vim.lsp.config["rust_analyzer"] = {
        cmd = { vim.fn.trim(vim.fn.system("rustup which rust-analyzer")) },
        settings = {
          ["rust-analyzer"] = {
            check = { command = "clippy" },
          },
        },
      }
      vim.lsp.enable("rust_analyzer")
    end,
  },
}
