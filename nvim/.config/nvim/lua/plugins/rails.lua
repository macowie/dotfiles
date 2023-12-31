return {
  { "tpope/vim-rails" },
  { "tpope/vim-bundler" },
  { "suketa/nvim-dap-ruby" },
  { "olimorris/neotest-rspec" },
  {
    "andythigpen/nvim-coverage",
    event = "VeryLazy",
    opts = {},
  },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        ["neotest-rspec"] = {
          rspec_cmd = function()
            return vim.tbl_flatten({ "bundle", "exec", "rspec" })
          end,
        },
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        rubocop = {
          cmd = { "bundle", "exec", "rubocop", "--lsp" },
        },
      },
    },
  },
}
