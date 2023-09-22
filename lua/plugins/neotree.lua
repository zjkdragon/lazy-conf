return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      filesystem = {
        window = {
          mappings = {
            ["o"] = "open",
            ["O"] = "open_path",
            ["u"] = "navigate_up",
            ["z"] = "none",
            ["w"] = "none",
            ["b"] = "none",
            ["h"] = "none",
            ["l"] = "none",
            ["j"] = "none",
            ["k"] = "none",
            ["y"] = "none",
            ["C"] = "copy_path",
            ["c"] = "copy_to_clipboard",
          },
        },
        commands = {
          copy_path = function(state)
            print(state.tree:get_node().path)
            -- copy path of current node to unnamed register
            vim.fn.setreg("*", state.tree:get_node().path)
          end,
          open_path = function(state)
            -- opoen path of current node to unnamed register
            vim.api.nvim_command(":!open " .. state.tree:get_node().path)
          end,
        },
      },
    })
  end,
}
-- return {
--   "nvim-neo-tree/neo-tree.nvim",
--   opts = function(_, opts)
--     print_r(opts)
--   end,
-- }
