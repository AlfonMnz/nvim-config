local keymap = function(mode, shortcut, command) 
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
  end
  
  vim.g.mapleader = ','
  
  keymap('n', '<leader>w', ':w<cr>')
  keymap('n', '<leader>f', ':Files<cr>')
  keymap('n', '<leader>d', ':NvimTreeToggle<cr>')
  keymap('n', '<leader>tv', ':botright vnew <Bar> :terminal<cr>')
  keymap('n', '<leader>th', ':botright new <Bar> :terminal<cr>')
  keymap('t', '<Esc>', '<C-\\><C-n>')
  
  keymap('n', '<leader>f', ':Telescope find_files<cr>')
  keymap('n', '<leader>s', ':Telescope live_grep<cr>')
  keymap('n', '<leader>b', ':Telescope buffers<cr>')
  
  keymap('n', '<C-j>', '<C-W>j')
  keymap('n', '<C-k>', '<C-W>k')
  keymap('n', '<C-h>', '<C-W>h')
  keymap('n', '<C-l>', '<C-W>l')
  
  -- STEVE CUSTOM 
  keymap('v', '<C-c>', '"+y', { noremap = true })
  keymap('n', '<C-v>', '"+p', { noremap = true })

  keymap('x', '<Home>', 'm`0', { noremap = true })
  keymap('x', '<End>', '$', { noremap = true })

  keymap('i', '<Home>', '<Esc>m`0i', { noremap = true })
  keymap('i', '<End>', '<C-o>$', { noremap = true })

  keymap('n', '<S-Home>', 'V', {noremap = true, silent = true})

  keymap('v', '<C-S-Right>', ':normal! vw<CR>', {noremap = true})
  keymap('v', '<C-S-Left>', ':normal! vb<CR>', {noremap = true})
  

  keymap('v', '<C-A-Right>', ':normal! vw<CR>', {noremap = true})
  keymap('v', '<C-A-Left>', ':normal! vb<CR>', {noremap = true})
  
  

