return {
  {
    "dracula/vim",
    -- config = function()
    --   require("dracula").setup({
    --     transparent_bg = true,
    --     italic_comment = true,
    --   })
    -- end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
