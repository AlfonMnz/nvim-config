return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {style = "moon"},
    },
    
    {
        "bluz71/vim-nightfly-guicolors",
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
        -- load the colorscheme here
        vim.cmd([[colorscheme nightfly]])
        end,
    },
}