return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.5',
	dependencies = { 'nvim-lua/plenary.nvim' },
	defaults = {
		-- Aquí puedes agregar otras configuraciones predeterminadas
		file_ignore_patterns = { "node_modules", ".git", "otra_carpeta_a_ignorar" }
	},
	-- Configuraciones para extensiones específicas
	extensions = {
		-- Configuración para extensiones aquí
	},
}
