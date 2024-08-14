-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Undo
map("n", "U", "<c-r>", { noremap = true, silent = true })

---@param current number
---@param transformed number
local function convertTabSpaces(current, transformed)
  local o = vim.o

  o.expandtab = false
  o.tabstop = current
  vim.cmd("%retab!")

  o.tabstop = transformed
  o.expandtab = true
  vim.cmd("retab")
end

map("n", "<leader>cF24",
  function()
    convertTabSpaces(2, 4)
  end,
  { desc = "Converts 2 tabstop to 4 tabstop" }
)
