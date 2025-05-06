-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Move code blocks up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor on mid screen while jumping up and down
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u", "<C-u>zz")

-- Keep highlighted search term found in the middle of the screen
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Keeps copied code into buffer
keymap.set("x", "<leader>p", "\"_dP")

-- Copies things to system clipboard
keymap.set("n", "<leader>y", "\"+y")
keymap.set("v", "<leader>y", "\"+y")
keymap.set("n", "<leader>Y", "\"+y")

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Open explorer
keymap.set("n", "<leader>po", vim.cmd.Ex)

-- Save file
keymap.set({ "n", "i" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Quit all without saving
keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit without saving" })

-- Quit
keymap.set("n", "<leader>k", ":q<Return>", { desc = "Quit window without forcing" })

-- Harpoon
local harpoon = require("harpoon")
harpoon:setup()

keymap.set("n", "<C-h>", function()
  harpoon:list():add()
end)

keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)
