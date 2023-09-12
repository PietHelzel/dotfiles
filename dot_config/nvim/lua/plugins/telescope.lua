return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    cmd = "Telescope",
    keys = {
        {mode = "n", "<leader>ff", ":Telescope find_files<cr>"},
        {mode = "n", "<leader>fg", ":Telescope live_grep<cr>"},
        {mode = "n", "<leader>fb", ":Telescope buffers<cr>"},
        {mode = "n", "<leader>fh", ":Telescope help_tags<cr>"},
        {mode = "n", "<leader>f<S-s>", ":Telescope lsp_workspace_symbols<cr>"},
        {mode = "n", "<leader>fs", ":Telescope lsp_document_symbols<cr>"},
        {mode = "n", "<leader>f<S-d>", ":Telescope diagnostics<cr>"},
        {mode = "n", "<leader>fd", ":Telescope diagnostics bufnr=0<cr>"}
    },
    opts = {}
}
