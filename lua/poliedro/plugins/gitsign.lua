return {
	'lewis6991/gitsigns.nvim',
	dependencies = {'nvim-lua/plenary.nvim'},
	config = function ()
		require('gitsigns').setup {
			signs = {
				add = {text = '+'},
				change = {text = '~'},
				delete = {text = '-'},
				topdelete = {text = '-'},
				changedelete = {text = '~'},
			},
			numhl = false, -- Habilitar si quieres resaltar el número de línea en lugar del signo.
			linehl = false,
			watch_gitdir = {
				interval = 1000,
				follow_files = true
			},
			sign_priority = 6,
			status_formatter = nil,
		}-- Usa esto para personalizar el texto de estado.
  -- Más opciones y configuraciones disponibles en la documentación.
	end

}
