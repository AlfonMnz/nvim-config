local keymap = function(mode, shortcut, command, description)
    description = description or ''
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true, desc = description })
end

vim.g.mapleader = ' '

-- POLIEDRO CUSTOM

keymap('n', '<leader>ff', ':Telescope find_files<cr>', 'Tel: Find files')
keymap('n', '<leader>d', ':NvimTreeFocus<cr>', 'Tree: Focus')
keymap('n', '<leader>df', ':NvimTreeFindFile<cr>', 'Tree: Find file')
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
keymap('n', '<leader>fr', ':Telescope oldfiles<CR>', 'Abrir archivos recientes')
keymap('n', '<leader>FF', ':Telescope live_grep<CR>', 'Tel: Buscar en los archivos')
keymap('n', '<leader>vv', ':vs<CR>', 'Split vertical')
keymap('n', '<leader>bb', ':split<CR>', 'Split horizontal')
keymap('n', 'L', '$', 'Go To: end of line')
keymap('n', 'H', '0', 'Go To: start of line')
keymap('t', '<Esc>', '<C-\\><C-n>', 'Exit terminal mode')
