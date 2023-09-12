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
            }
        })
        vim.cmd("colorscheme catppuccin")
    end
}
