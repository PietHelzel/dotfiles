return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    cmd = "Telescope",
    keys = {
        {mode = "n", "<leader>ff", ":Telescope find_files<cr>", desc = "search files"},
        {mode = "n", "<leader>fg", ":Telescope live_grep<cr>", desc = "live grep"},
        {mode = "n", "<leader>fb", ":Telescope buffers<cr>", desc = "list buffers"},
        {mode = "n", "<leader>fh", ":Telescope help_tags<cr>", desc = "search help"},
        {mode = "n", "<leader>f<S-s>", ":Telescope lsp_workspace_symbols<cr>", desc = "list workspace symbols"},
        {mode = "n", "<leader>fs", ":Telescope lsp_document_symbols<cr>", desc = "list document symbols"},
        {mode = "n", "<leader>f<S-d>", ":Telescope diagnostics<cr>", desc = "list workspace diagnostics"},
        {mode = "n", "<leader>fd", ":Telescope diagnostics bufnr=0<cr>", desc = "list buffer diagnostics"},
        {mode = "n", "<leader>ft", ":Telescope treesitter<cr>", desc = "list treesitter symbols"},
        {mode = "n", "<leader>fc", ":Telescope current_buffer_fuzzy_find<cr>", desc = "fuzzy find in current buffer"}
    },
    opts = {}
}
