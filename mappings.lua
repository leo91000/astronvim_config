return {
  -- first key is the mode
  n = {
    -- Git
    ["<leader>gk"] = {
      function() vim.cmd "Git push" end,
      desc = "Git push",
    },
    ["<leader>gF"] = {
      function() vim.cmd "Git push --force-with-lease" end,
      desc = "Git push (force with lease)",
    },
    ["<leader>gK"] = {
      function() vim.cmd "Git pull" end,
      desc = "Git pull --rebase",
    },

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    ["<F9>"] = { ":LspRestart<cr>", desc = "Restart LSPs" },
  },

  -- Insert mode
  i = {
    -- Remap Ctrl-c to Esc in insert mode
    -- ["<C-c>"] = { "<Esc>", desc = "Escape from insert mode" },
  },
}
