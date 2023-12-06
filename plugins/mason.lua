-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "eslint",
        "volar",
        "rust_analyzer",
        "cssls",
        "dockerls",
        "html",
        "jsonls",
        "texlab",
        "lua_ls",
        "pyright",
        "svelte",
        "taplo",
        "tailwindcss",
        "yamlls",
        "bashls",
        "prismals",
        "sqlls",
        "zls",
        "tsserver",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "stylua",
        "yamlfmt",
        "jsonlint",
        "beatysh",
        "sql-formatter",
        "shellcheck",
        "hadolint",
        "ruff",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        -- "python",
      })
    end,
  },
}
