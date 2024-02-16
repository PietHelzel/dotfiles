return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "BufRead",
    config = function()
        require("nvim-treesitter").setup({})
        require("nvim-treesitter.configs").setup({
            auto_install = true,
            highlight = {
                enable = true
            },
            indent = {
                enable = true
            }
        })
    end
}
