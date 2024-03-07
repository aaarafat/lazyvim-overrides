return {
      -- add gruvbox
  { "cpea2506/one_monokai.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "one_monokai",
    },
  }
}