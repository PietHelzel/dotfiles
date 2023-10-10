return {
    "smoka7/hop.nvim",
    opts = {},
    keys = {
        {mode = "n", "<leader>h", ":HopWord<cr>", desc = "hop to word"},
        {mode = "n", "<leader>jl", ":HopLine<cr>", desc = "hop to line"},
        {mode = "n", "<leader>js", ":HopeLineStart<cr>", desc = "hop to line start"},
        {mode = "n", "<leader>jn", ":HopNodes<cr>", desc = "hop to treesitter nodes"}
    }
}
