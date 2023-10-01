return {
    "romgrk/barbar.nvim",
    dependencies = {
        "lewis6991/gitsigns.nvim",
        "nvim-tree/nvim-web-devicons"
    },
    lazy = false,
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
        sidebar_filetypes = {
            NvimTree = true
        },
        icons = {
            pinned = {button = "󰐃", filename = true}
        }
    },
    keys = {
        {mode = "n", "<leader>q", ":BufferClose<cr>"},
        {mode = "n", "<leader><S-q>", ":BufferClose!<cr>"},
        {mode = "n", "<A-j>", ":BufferPrevious<cr>"},
        {mode = "n", "<A-k>", ":BufferNext<cr>"},
        {mode = "n", "<A-h>", ":BufferMovePrevious<cr>"},
        {mode = "n", "<A-l>", ":BufferMoveNext<cr>"},
        {mode = "n", "<leader>bb", ":BufferPick<cr>"},
        {mode = "n", "<leader>bd", ":BufferPickDelete<cr>"},
        {mode = "n", "<leader>bp", ":BufferPin<cr>"},
        {mode = "n", "<leader>bw", ":BufferCloseAllButCurrentOrPinned<cr>"},
        {mode = "n", "<leader>bj", ":BufferCloseBuffersLeft<cr>"},
        {mode = "n", "<leader>bk", ":BufferCloseBuffersRight<cr>"},
        {mode = "n", "<leader>b<S-d>", ":BufferPickDelete!<cr>"},
        {mode = "n", "<leader>b<S-p>", ":BufferPin<cr>"},
        {mode = "n", "<leader>b<S-w>", ":BufferCloseAllButCurrentOrPinned!<cr>"},
        {mode = "n", "<leader>b<S-j>", ":BufferCloseBuffersLeft!<cr>"},
        {mode = "n", "<leader>b<S-k>", ":BufferCloseBuffersRight!<cr>"},
    }
}
