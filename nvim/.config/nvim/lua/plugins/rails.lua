return {
  {
    "tpope/vim-rails",
    config = function()
      vim.g.rails_projections = {
        ["app/controllers/*_controller.rb"] = {
          ["test"] = {
            "spec/requests/{}_spec.rb",
            "spec/controllers/{}_controller_spec.rb",
            "test/controllers/{}_controller_test.rb",
          },
          ["alternate"] = {
            "spec/requests/{}_spec.rb",
            "spec/controllers/{}_controller_spec.rb",
            "test/controllers/{}_controller_test.rb",
          },
        },
        ["spec/requests/*_spec.rb"] = {
          ["command"] = "request",
          ["alternate"] = "app/controllers/{}_controller.rb",
        },
      }
    end,
  },

  { "tpope/vim-bundler" },
  { "tpope/vim-commentary" },
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
          settings = {
            layoutMode = true,
            formatting = false,
          },
        },
        solargraph = {
          settings = {
            formatting = false,
            useBundler = true,
          },
        },
      },
    },
  },
}
