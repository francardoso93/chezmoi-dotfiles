return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = {
        enabled = false, -- Disable scrolling animations
      },
      picker = {
        hidden = true,
        ignored = true,
        sources = {
          grep = {
            exclude = { "node_modules" },
          },
        },
      },
    },
  },
}
