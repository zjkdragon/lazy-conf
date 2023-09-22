return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    -- 折叠配置
    vim.wo.foldmethod = "expr"
    vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
    -- 默认不折叠
    vim.wo.foldlevel = 99
  end,
}
