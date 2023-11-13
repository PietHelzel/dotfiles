return {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    keys = {
        {mode = "n", "<leader>e", "<cmd>NvimTreeFocus<cr>", desc = "focus file tree"},
        {mode = "n", "<leader><S-e>", "<cmd>NvimTreeToggle<cr>", desc = "toggle file tree"}
    },
    opts = {
        update_cwd = true
    }
}
