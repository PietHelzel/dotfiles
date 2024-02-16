return {
    "akinsho/bufferline.nvim",
    enabled = true,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        {
            "echasnovski/mini.bufremove",
            opts = {}
        }
    },
    lazy = false,
    config = function ()
        require("bufferline").setup({
            options = {
                close_command = function(n) require("mini.bufremove").delete(n, false) end,
                right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
                groups = {
                    items = {
                        require('bufferline.groups').builtin.pinned:with({ icon = "󰐃" })
                    }
                },
                indicator = {
                    style = "none"
                },
                separator_style = {
                    '', ''
                },
                offsets = {{
                    filetype = "neo-tree",
                    text = " File Explorer",
                    highlight = "Directory",
                    separator = true,
                }}
            }
        })
    end,
    keys = {
        {mode = "n", "<leader>q", function() require("mini.bufremove").delete(0, false) end, desc = "close current buffer"},
        {mode = "n", "<leader><S-q>", function() require("mini.bufremove").delete(0, true) end, desc = "close current buffer (force)"},
        {mode = "n", "<A-j>", "<cmd>BufferLineCyclePrev<cr>", desc = "goto prev buffer"},
        {mode = "n", "<A-k>", "<cmd>BufferLineCycleNext<cr>", desc = "goto next buffer"},
        {mode = "n", "<A-h>", ":BufferLineMovePrev<cr>", desc = "move buffer left"},
        {mode = "n", "<A-l>", ":BufferLineMoveNext<cr>", desc = "move buffer right"},
        {mode = "n", "<leader>bb", ":BufferLinePick<cr>", desc = "pick buffer"},
        {mode = "n", "<leader>bd", ":BufferLinePickClose<cr>", desc = "pick buffer + close"},
        {mode = "n", "<leader>bp", ":BufferLineTogglePin<cr>", desc = "pin buffer"},
        {mode = "n", "<leader>bw", ":BufferLineGroupClose ungrouped<cr>", desc = "close unpinned buffers"},
        {mode = "n", "<leader>bo", ":BufferLineCloseOthers<cr>", desc = "close others"},
        {mode = "n", "<leader>bj", ":BufferLineCloseLeft<cr>", desc = "close buffers left"},
        {mode = "n", "<leader>bk", ":BufferLineCloseRight<cr>", desc = "close buffers right"}
    }
}
