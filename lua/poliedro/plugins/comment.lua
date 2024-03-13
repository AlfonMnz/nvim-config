return {
    'numToStr/Comment.nvim',
    opts = {
			---Add a space b/w comment and the line
			padding = true,
			---Whether the cursor should stay at its position
			sticky = true,
			---Lines to be ignored while (un)comment
			ignore = nil,
			---LHS of toggle mappings in NORMAL mode
			toggler = {
					---Line-comment toggle keymap
					line = 'gcc',
					---Block-comment toggle keymap
					block = 'gbc',
			},
    },
    lazy = false,
}
