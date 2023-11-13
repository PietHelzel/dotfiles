return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim"
    },
    cmd = "Neotree",
    opts = {
        popup_border_style = "rounded",
        window = {
            width = 32
        }
    },
    keys = {
        {mode = "n", "<leader>e", "<cmd>Neotree<cr>", desc = "focus file tree"},
        {mode = "n", "<leader><S-e>", "<cmd>Neotree close<cr>", desc = "toggle file tree"}
    }
}
