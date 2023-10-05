return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        require("nvim-treesitter.configs").setup({
            auto_install = true,
            highlight = {
                enable = true
            },
            indent = {
                enable = true
            }
        })
    }
}
