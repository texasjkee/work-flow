-- Keymappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Select all text
map("n", "<C-a>", "gg<S-v>G", opts)

-- Move select text
map("v", "K", ":m '<-2<CR>gv=gv", opts)
map("v", "J", ":m '>+1<CR>gv=gv", opts)

-- Copy and paste
map("n", "<C-v>", '"*p', opts)
map("i", "<C-v>", '"*p', opts)
map("v", "<C-c>", '"*y', opts)
map("v", "<leader>p", '"_dP', opts)

-- Save file
map("n", "<C-s>", ":w<CR>", opts)

-- Disable search highlighting
map("n", "<C-h>", ":nohlsearch<CR>", opts)

-- Manage buffers
map("n", "<A-q>", ":bnext<CR>", opts)
map("n", "<A-v>", ":bprevious<CR>", opts)
map("n", "<A-w>", ":bdelete<CR>", opts)

-- NvimTree
map("n", "<A-e>", ":NvimTreeToggle<CR>", opts)

--Telescope
map("n", "<C-p>", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)

map("n", "<leader><Tab>", "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
map("n", "<C-b>", ":%bd|e#|bd#<CR>", {})

map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)
map("n", "<leader>fn", "<cmd>lua require('telescope.builtin').git_status()<CR>", opts)
