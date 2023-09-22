if false then
  return {}
end

return {
  "Exafunction/codeium.vim",
  event = "BufEnter",
  config = function()
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set("i", "<C-l>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true })
    vim.keymap.set("i", "<c-j>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true })
    vim.keymap.set("i", "<c-k>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true })
    vim.keymap.set("i", "<c-h>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true })
  end,
}

-- return {
--   {
--     "jcdickinson/codeium.nvim",
--     dependencies = {
--       "nvim-lua/plenary.nvim",
--       "hrsh7th/nvim-cmp",
--     },
--     config = function()
--       require("codeium").setup({})
--     end,
--   },
--   {
--     "jcdickinson/http.nvim",
--     build = "cargo build --workspace --release",
--   },
--   {
--     "jcdickinson/codeium.nvim",
--     dependencies = {
--       "jcdickinson/http.nvim",
--       "nvim-lua/plenary.nvim",
--       "hrsh7th/nvim-cmp",
--     },
--     config = function()
--       require("codeium").setup({})
--     end,
--   },
--   -- {
--   --   "hrsh7th/nvim-cmp",
--   --   opts = function()
--   --     local cmp = require("cmp")
--   --     return {
--   --       sources = cmp.config.sources({
--   --         { name = "nvim_lsp" },
--   --         { name = "luasnip" },
--   --         { name = "buffer" },
--   --         { name = "path" },
--   --         { name = "codeium" },
--   --       }),
--   --       -- formatting = {
--   --       --   format = function(_, item)
--   --       --     local icons = require("lazyvim.config").icons.kinds
--   --       --     if item.kind == "Codeium" then
--   --       --       item.kind = icons["Copilot"] .. item.kind
--   --       --     elseif icons[item.kind] then
--   --       --       item.kind = icons[item.kind] .. item.kind
--   --       --     end
--   --       --     return item
--   --       --   end,
--   --       -- },
--   --     }
--   --   end,
--   -- },
-- }
