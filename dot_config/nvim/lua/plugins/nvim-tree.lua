return {
    "nvim-tree/nvim-tree.lua",
    requires = {
        "nvim-tree/nvim-web-devicons"
    },
    keys = {
        {mode = "n", "<leader>e", ":NvimTreeFocus<cr>"},
        {mode = "n", "<leader><S-e>", ":NvimTreeToggle<cr>"}
    },
    config = function()
        require("nvim-tree").setup()
    end
}
