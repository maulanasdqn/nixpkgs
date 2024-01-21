local map = vim.api.nvim_set_keymap
local default_options = {noremap = true, silent = true}
-- set shorter name for keymap function
local kmap = vim.keymap.set

-- F5 processes the document once, and refreshes the view
kmap({ 'n', 'v', 'i' },'<F5>', function() require("knap").process_once() end)

-- F6 closes the viewer application, and allows settings to be reset
kmap({ 'n', 'v', 'i' },'<F6>', function() require("knap").close_viewer() end)

-- F7 toggles the auto-processing on and off
kmap({ 'n', 'v', 'i' },'<F7>', function() require("knap").toggle_autopreviewing() end)

-- F8 invokes a SyncTeX forward search, or similar, where appropriate
kmap({ 'n', 'v', 'i' },'<F8>', function() require("knap").forward_jump() end)

map("n", "<Space>", "<NOP>", default_options)
map("n", "S", "<cmd>Telescope live_grep<CR>", {noremap = true})
map("n", "s", "<cmd>Telescope find_files<CR>", {noremap = true})
map("n", "T", "<cmd>Telescope buffers<CR>", {noremap = true})
map("n", "t", "<cmd>Lspsaga term_toggle<CR>", {noremap = true})
map("n", "c", "<cmd>NvimTreeToggle<CR>", {noremap = true})
map("n", "D", "<cmd>Lspsaga hover_doc<CR>", {noremap = true})
map("n", "R", "<cmd>Lspsaga rename<CR>", {noremap = true})
map("n", "Q", "<cmd>Lspsaga code_action<CR>", {noremap = true})
map("n", "E", "<cmd>Lspsaga diagnostic_jump_next<CR>", {noremap = true})
map("n", "e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", {noremap = true})
map("n", "F", "<cmd>Lspsaga peek_definition<CR>", {noremap = true})
map("n", "f", "<cmd>Lspsaga goto_definition<CR>", {noremap = true})
map('n', 'x', '"_x', {noremap = true})
map('n', '<Space>', '<C-w>w', {noremap = true})
