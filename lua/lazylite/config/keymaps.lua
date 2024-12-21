-- Down and Up mappings
vim.keymap.set(
  { "n", "x" },
  "j",
  "v:count == 0 ? 'gj' : 'j'",
  { desc = "Down", expr = true, silent = true }
)
vim.keymap.set(
  { "n", "x" },
  "<Down>",
  "v:count == 0 ? 'gj' : 'j'",
  { desc = "Down", expr = true, silent = true }
)
vim.keymap.set(
  { "n", "x" },
  "k",
  "v:count == 0 ? 'gk' : 'k'",
  { desc = "Up", expr = true, silent = true }
)
vim.keymap.set(
  { "n", "x" },
  "<Up>",
  "v:count == 0 ? 'gk' : 'k'",
  { desc = "Up", expr = true, silent = true }
)

-- Indentation adjustments in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Decrease indent and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Increase indent and reselect" })

-- Arrow key warnings
vim.keymap.set("n", "<Left>", "<cmd>echo \"Use h to move!\"<CR>", { desc = "Warn to use h" })
vim.keymap.set("n", "<Right>", "<cmd>echo \"Use l to move!\"<CR>", { desc = "Warn to use l" })
vim.keymap.set("n", "<Up>", "<cmd>echo \"Use k to move!\"<CR>", { desc = "Warn to use k" })
vim.keymap.set("n", "<Down>", "<cmd>echo \"Use j to move!\"<CR>", { desc = "Warn to use j" })

-- Escape key enhancements
vim.keymap.set({ "i", "n", "s" }, "<esc>", function()
  vim.cmd("noh")
  return "<esc>"
end, { expr = true, desc = "Escape and clear hlsearch" })
