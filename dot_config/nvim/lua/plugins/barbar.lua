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
        {mode = "n", "<leader>q", ":BufferClose<cr>", desc = "close buffer"},
        {mode = "n", "<leader><S-q>", ":BufferClose!<cr>", desc = "close buffer (force)"},
        {mode = "n", "<A-j>", ":BufferPrevious<cr>"},
        {mode = "n", "<A-k>", ":BufferNext<cr>"},
        {mode = "n", "<A-h>", ":BufferMovePrevious<cr>"},
        {mode = "n", "<A-l>", ":BufferMoveNext<cr>"},
        {mode = "n", "<leader>bb", ":BufferPick<cr>", desc = "pick buffer"},
        {mode = "n", "<leader>bd", ":BufferPickDelete<cr>", desc = "pick buffer + delete"},
        {mode = "n", "<leader>b<S-d>", ":BufferPickDelete!<cr>", desc = "pick buffer + delete (force)"},
        {mode = "n", "<leader>bp", ":BufferPin<cr>", desc = "pin buffer"},
        {mode = "n", "<leader>bw", ":BufferCloseAllButCurrentOrPinned<cr>", desc = "close buffers except current/pinned"},
        {mode = "n", "<leader>bj", ":BufferCloseBuffersLeft<cr>", desc = "close buffers to left"},
        {mode = "n", "<leader>bk", ":BufferCloseBuffersRight<cr>", desc = "close buffers to right"},
        {mode = "n", "<leader>b<S-w>", ":BufferCloseAllButCurrentOrPinned!<cr>", desc = "close buffers except current/pinned (force)"},
        {mode = "n", "<leader>b<S-j>", ":BufferCloseBuffersLeft!<cr>", desc = "close buffers left (force)"},
        {mode = "n", "<leader>b<S-k>", ":BufferCloseBuffersRight!<cr>", desc = "close buffers right (force)"}
    }
}
