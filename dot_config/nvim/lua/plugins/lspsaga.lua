return {
    "nvimdev/lspsaga.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },
    event = "LspAttach",
    cmd = "Lspsaga",
    opts = {
        ui = {
            border = "rounded"
        },
        lightbulb = {
            enable = false
        },
        outline = {
            layout = "float"
        }
    },
    keys = {
        {mode = {"n", "t"}, "<C-#>", "<cmd>Lspsaga term_toggle<cr>"},
        {mode = "n", "<leader>lo", ":Lspsaga outline<cr>"},
        {mode = "n", "<leader>lf", ":Lspsaga finder<cr>"},
        {mode = "n", "<leader>ld", ":Lspsaga hover_doc<cr>"},
        {mode = "n", "<leader>lr", ":Lspsaga rename<cr>"},
        {mode = "n", "<leader>ll", ":Lspsaga diagnostic_jump_prev<cr>"},
        {mode = "n", "<leader>lL", ":Lspsaga diagnostic_jump_next<cr>"},
        {mode = "n", "<leader>lm", ":Lspsaga show_buf_diagnostics<cr>"},
        {mode = "n", "<leader>lM", ":Lspsaga show_workspace_diagnostics<cr>"}
    }
}
