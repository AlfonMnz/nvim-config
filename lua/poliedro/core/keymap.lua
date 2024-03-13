local keymap = function(mode, shortcut, command, description)
	description = description or ''
	vim.keymap.set(mode, shortcut, command, { noremap = true, silent = true, desc = description })
end

vim.g.mapleader = ','

-- POLIEDRO CUSTOM

keymap('n', '<leader>ff', ':Telescope find_files<cr>', 'Tel: Find files')
keymap('n', '<leader>d', ':NvimTreeFocus<cr>', 'Tree: Focus')
keymap('n', '<leader>df', ':NvimTreeFindFile<cr>', 'Tree: Find file')
keymap('n', '<leader>dc', ':NvimTreeToggle<cr>', 'Tree: Toggle tree')
keymap('n', '<leader>s', ':w', 'Save file')
keymap('n', '<leader>q', ':q', 'Close file')
keymap('n', '<leader>so', ':so', 'SO')
keymap('n', '<leader>th', ':split | terminal<cr>', 'Open H terminal')
keymap('n', '<leader>tv', ':vsplit | terminal<cr>', 'Open V terminal')
keymap('v', '<leader>dd', 'yyp', 'Duplicate line')
keymap('n', '<leader><', ':resize -5<CR>', '-5 horizontal')
keymap('n', '<leader>>', ':resize +5<CR>', '+5 horizontal')
keymap('n', '<leader>-', ':vertical resize -5<CR>', '-5 vertical')
keymap('n', '<leader>+', ':vertical resize +5<CR>', '+5 vertical')
keymap('n', '<leader>fr', ':Telescope oldfiles<CR>', 'Tel: Abrir archivos recientes')
keymap('n', '<leader>FF', ':Telescope live_grep<CR>', 'Tel: Buscar en los archivos')
keymap('n', '<leader>vv', ':vs<CR>', 'Split vertical')
keymap('n', '<leader>bb', ':split<CR>', 'Split horizontal')
keymap({ 'n', 'v' }, 'L', '$', 'Go To: end of line')
keymap({ 'n', 'v' }, 'H', '0', 'Go To: start of line')
keymap({ 'n', 'v' }, 'JJ', 'G', 'Go To: end of file')
keymap({ 'n', 'v' }, 'KK', 'gg', 'Go To: init of file')
keymap('t', '<Esc>', '<C-\\><C-n>', 'Exit terminal mode')
keymap('v', 'J', ":m '>+1<CR>gv=gv", 'Move selected up')
keymap('v', 'K', ":m '<-2<CR>gv=gv", 'Move selected down')
keymap('n', '<leader>ef', "<cmd>lua vim.lsp.buf.format()<CR>", 'Lint: Fix')
-- vim.api.nvim_set_keymap("n", "<leader>ef", "<cmd>lua vim.lsp.buf.formatting()<CR>", {noremap = true, silent = true})


-- MAC CUSTOM
--	keymap('n', '<A-w>', '<C-w>', "Mode Ctrl+W")
