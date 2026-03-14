-- Override tokyonight to disable italic comments
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      styles = {
        comments = { italic = false },
      },
    },
  },
}
