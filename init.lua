return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin", -- remote to use
    channel = "stable", -- "stable" or "nightly"
    version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false, -- automatically quit the current session after a successful update
    remotes = { -- easily add new remotes to track
      --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
      --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
      --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    },
  },

  -- Set colorscheme to use
  colorscheme = "catppuccin",

  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = false,
    underline = false,
  },

  lsp = {
    mappings = {
      n = {
        ["<leader>dn"] = { function() vim.diagnostic.goto_next() end, desc = "Go to next diagnostic" },
        ["<leader>dp"] = { function() vim.diagnostic.goto_prev() end, desc = "Go to previous diagnostic" },
      },
    },
    formatting = {
      format_on_save = {
        enabled = true,
        ignore_filetypes = {
          "vue",
          "ts",
        },
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright"
    },
    config = {
      eslint = {
        ---@diagnostic disable-next-line: unused-local
        on_attach = function(client, bufnr)
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
        end,
      },
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = {
              allFeatures = true,
              command = "clippy",
              extraArgs = { "--no-deps" },
            },
          },
        },
      },
    },
  },

  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },

  polish = function()
    vim.filetype.add { extension = { wgsl = "wgsl" } }
    vim.wo.foldmethod = "expr"
    vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
    vim.o.foldlevelstart = 99
  end,
}
