return {
    "folke/trouble.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {},
    keys = {
        {mode = "n", "<leader>tt", ":TroubleToggle<cr>", desc = "Toggle View"},
        {mode = "n", "<leader>tw", ":Trouble workspace_diagnostics<cr>", desc = "Workspace Diagnostics"},
        {mode = "n", "<leader>td", ":Trouble document_diagnostics<cr>", desc = "Document Diagnostics"},
        {mode = "n", "<leader>tr", ":Trouble lsp_references<cr>", desc = "List References"},
        {mode = "n", "<leader>tf", ":Trouble lsp_definitions<cr>", desc = "List Definitons"},
        {mode = "n", "<leader>ti", ":Trouble lsp_implementations<cr>", desc = "List Implementations"}
    }
}
