return {
  {
    "pwntester/octo.nvim",
    event = "VeryLazy",
    opts = {},
  },

  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = true,
  },

  {
    "9seconds/repolink.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    cmd = {
      "RepoLink",
    },

    opts = {},
  },
}
