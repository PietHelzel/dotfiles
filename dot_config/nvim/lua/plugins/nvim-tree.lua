return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    keys = {
        {mode = "n", "<leader>e", ":NvimTreeFocus<cr>", desc = "focus file tree"},
        {mode = "n", "<leader><S-e>", ":NvimTreeToggle<cr>", desc = "toggle file tree"}
    },
    opts = {}
}
