return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {style = "moon"},
		config = function ()
			vim.cmd.colorscheme("tokyonight")
		end
	},
	{
		"samharju/synthweave.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("synthweave")
			-- transparent version
			-- vim.cmd.colorscheme("synthweave-transparent")
		end
	},
	{
		"Mofiqul/dracula.nvim",
		lazy = false,
		priority = 1000,
		config = function ()
			-- vim.cmd.colorscheme("dracula")
		end
	}
}
