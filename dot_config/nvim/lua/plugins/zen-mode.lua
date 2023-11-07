return {
    "folke/zen-mode.nvim",
    opts = {
        window = {
            backdrop = 0.8,
            width = 0.7
        }
    },
    keys = {
        {mode = "n", "<leader>z", "<cmd>ZenMode<cr>", desc = "toggle zen mode"}
    }
}
