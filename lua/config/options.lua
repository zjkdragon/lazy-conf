-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.cmd("autocmd VimEnter * hi NormalFloat ctermbg=NONE guibg=NONE")
vim.cmd("autocmd VimEnter * hi VertSplit ctermbg=NONE guibg=NONE")
vim.cmd("autocmd VimEnter * hi FloatBorder ctermbg=NONE guibg=NONE")

if vim.g.neovide then
  local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.7))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.0
  vim.g.transparency = 0.7
  vim.g.neovide_background_color = "#0f1117" .. alpha()
  vim.g.neovide_cursor_vfx_mode = "ripple"
  vim.opt.guifont = { "", ":h12" }
end
