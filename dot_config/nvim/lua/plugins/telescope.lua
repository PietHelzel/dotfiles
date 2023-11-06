return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "natecraddock/workspaces.nvim"
    },
    cmd = "Telescope",
    keys = {
        {mode = "n", "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "search files"},
        {mode = "n", "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "live grep"},
        {mode = "n", "<leader>fb", ":<cmd>Telescope buffers<cr>", desc = "list buffers"},
        {mode = "n", "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "search help"},
        {mode = "n", "<leader>f<S-s>", "<cmd>Telescope lsp_workspace_symbols<cr>", desc = "list workspace symbols"},
        {mode = "n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", desc = "list document symbols"},
        {mode = "n", "<leader>f<S-d>", "<cmd>Telescope diagnostics<cr>", desc = "list workspace diagnostics"},
        {mode = "n", "<leader>fd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "list buffer diagnostics"},
        {mode = "n", "<leader>ft", "<cmd>Telescope treesitter<cr>", desc = "list treesitter symbols"},
        {mode = "n", "<leader>fc", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "fuzzy find in current buffer"},
        {mode = "n", "<leader>fw", "<cmd>Telescope workspaces<cr>", desc = "find workspaces"}
    },
    config = function ()
        local telescope = require("telescope")
        telescope.load_extension("workspaces")
    end
}
