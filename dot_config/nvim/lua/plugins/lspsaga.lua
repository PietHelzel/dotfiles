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
        {mode = {"n", "t"}, "<C-#>", "<cmd>Lspsaga term_toggle<cr>", desc = "toggle terminal"},
        {mode = "n", "<leader>lo", ":Lspsaga outline<cr>", desc = "outline"},
        {mode = "n", "<leader>lf", ":Lspsaga finder<cr>", desc = "find symbols"},
        {mode = "n", "<leader>ld", ":Lspsaga hover_doc<cr>", desc = "documentation"},
        {mode = "n", "<leader>lr", ":Lspsaga rename<cr>", desc = "rename symbol"},
        {mode = "n", "<leader>ll", ":Lspsaga diagnostic_jump_prev<cr>", desc = "jump to prev diagnostic"},
        {mode = "n", "<leader>lL", ":Lspsaga diagnostic_jump_next<cr>", desc = "jump to next diagnostic"},
        {mode = "n", "<leader>lm", ":Lspsaga show_buf_diagnostics<cr>", desc = "buffer diagnostics"},
        {mode = "n", "<leader>lM", ":Lspsaga show_workspace_diagnostics<cr>", desc = "workspace diagnostics"},
        {mode = "n", "<leader>la", ":Lspsaga code_action<cr>", desc = "code actions"}
    }
}
