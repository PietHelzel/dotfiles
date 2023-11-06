return {
    "folke/trouble.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {},
    keys = {
        {mode = "n", "<leader>tt", "<cmd>TroubleToggle<cr>", desc = "Toggle View"},
        {mode = "n", "<leader>tw", "<cmd>Trouble workspace_diagnostics<cr>", desc = "Workspace Diagnostics"},
        {mode = "n", "<leader>td", "<cmd>Trouble document_diagnostics<cr>", desc = "Document Diagnostics"},
        {mode = "n", "<leader>tr", "<cmd>Trouble lsp_references<cr>", desc = "List References"},
        {mode = "n", "<leader>tf", "<cmd>Trouble lsp_definitions<cr>", desc = "List Definitons"},
        {mode = "n", "<leader>ti", "<cmd>Trouble lsp_implementations<cr>", desc = "List Implementations"}
    }
}
