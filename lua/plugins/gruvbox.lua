-- if true then
--   return {}
-- end

return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  {
    "xiyaowong/transparent.nvim",
    extra_groups = {
      -- "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
      "NvimTreeNormal", -- NvimTree
    },
  },
}
