return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            integrations = {
                nvimtree = true
            },
            transparent_background = true,
            -- custom_highlights = function(colors)
            --     return {
            --         TabLineSel = {bg = colors.red}
            --     }
            -- end,
        })
        vim.cmd("colorscheme catppuccin")
    end
}
