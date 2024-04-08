local options = {
    number = true,
    encoding = 'utf-8',
    hlsearch = true,
    incsearch = true,
    ignorecase = true,
    smartcase = true,
    backspace = 'indent,eol,start',
    tabstop = 2,
    shiftwidth = 2,
		softtabstop = 2,
		ttyfast = true,
		showmode = true,
		wrap = false, 
--		foldmethod='indent',
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
vim.opt.clipboard:append {'unnamedplus'} 

