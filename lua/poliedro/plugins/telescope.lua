return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
	defaults = {
		file_ignore_patterns = { "node_modules", ".git/"}
	},
	extensions = {
	},
}
