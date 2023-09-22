-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  opts = opts or {}
  opts.silent = opts.silent ~= false
  vim.keymap.set(mode, lhs, rhs, opts)
end

-- ---------- 插入模式 -----------
map("i", "kj", "<esc>", { desc = "ESC" })

map("n", "<tab>", ":bnext<CR>")
map("n", "<s-tab>", ":bprev<CR>")

-- map("n", "<leader>t", "<Plug>Translate")
map("v", "<c-t>", "<Plug>TranslateV")

map("n", "<leader>V", ":e $MYVIMRC<CR>")
map("n", "<leader>A", ":Alpha<CR>")
map("n", "c", "c")
map("n", "<leader>j", ":Joshuto<CR>")

map("n", "\\b", "<Plug>(easymotion-b)")
map("n", "\\w", "<Plug>(easymotion-w)")

map("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>")
map("n", "<leader>gk", ":Gitsigns prev_hunk<CR>")
map("n", "<leader>gj", ":Gitsigns next_hunk<CR>")

map("n", "<leader>ao", "<Plug>AICoding")
map("x", "<leader>ao", "<Plug>AICoding")

map("n", "<leader>b1", ":LualineBuffersJump 1<CR>")
map("n", "<leader>b2", ":LualineBuffersJump 2<CR>")
map("n", "<leader>b3", ":LualineBuffersJump 3<CR>")
map("n", "<leader>b4", ":LualineBuffersJump 4<CR>")
map("n", "<leader>b5", ":LualineBuffersJump 5<CR>")
map("n", "<leader>b6", ":LualineBuffersJump 6<CR>")

map("n", "<leader>cc", ":CodyToggle<CR>")
map("v", "<leader>cs", ":CodyAsk")
-- vim.keymap.set("n", "<leader>cs", function()
--   require("sg.extensions.telescope").fuzzy_search_results()
-- end, { noremap = true, silent = true })
