GET_HEADER = function()
  local logo = [[
           ▄ ▄                   
       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     
       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     
    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     
  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  
  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄
▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █
█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █
    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    
]]

  logo = string.rep("\n", 8) .. logo .. "\n\n"
  return vim.split(logo, "\n")
end
-- to keep vscode theme
if vim.g.vscode then
  return { {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "",
    },
  } }
else
  return {

    { "cpea2506/one_monokai.nvim" },
    { "tanvirtin/monokai.nvim" },
    {
      "navarasu/onedark.nvim",
      opts = {
        style = "warmer",
      },
    },
    {
      "catppuccin/nvim",
      name = "catppuccin",
      priority = 1000,
      opts = {
        transparent_background = true,
      },
    },
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "catppuccin",
        transparent_background = true,
      },
    },
    {
      "nvimdev/dashboard-nvim",
      opts = {
        config = {
          header = GET_HEADER(),
        },
      },
    },
  }
end
