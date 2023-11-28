return {
    "folke/zen-mode.nvim",
    opts = {
        window = {
            backdrop = 0.8,
            width = 0.7
        },
        on_open = function (_)
            vim.opt.showtabline = 0
        end,
        on_close = function (_)
            vim.opt.showtabline = 2
        end
    },
    keys = {
        {mode = "n", "<leader>z", "<cmd>ZenMode<cr>", desc = "toggle zen mode"}
    }
}
