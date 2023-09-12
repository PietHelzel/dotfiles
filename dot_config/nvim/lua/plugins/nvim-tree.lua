return {
    "nvim-tree/nvim-tree.lua",
    name = "nvim-tree",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    keys = {
        {mode = "n", "<leader>e", ":NvimTreeFocus<cr>"},
        {mode = "n", "<leader><S-e>", ":NvimTreeToggle<cr>"}
    },
    opts = {}
}
