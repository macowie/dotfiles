return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  options = {
    -- A list of parser names, or "all"
    ensure_installed = { "help", "lua", "ruby", "vim" },
    highlight = { enable = true },
    indent = { enable = true },
    incremental_selection = {
      enable = false,
    },
    matchup = {
      enable = true,
    },
  },
}
