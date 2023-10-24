return {
    "smoka7/hop.nvim",
    opts = {},
    keys = {
        {mode = {"n", "v"}, "<leader>h", function () require("hop").hint_words() end, desc = "hop to word"},
        {mode = {"n", "v"}, "<leader>jl", function () require("hop").hint_lines() end, desc = "hop to line"},
        {mode = {"n", "v"}, "<leader>js", function () require("hop").hint_lines_skip_whitespace() end, desc = "hop to line start"},
        {mode = {"n", "v"}, "<leader>jn", function () require("hop").hint_nodes() end, desc = "hop to treesitter nodes"},
        {mode = {"n", "v"}, "<leader>jc", function () require("hop").hint_char1() end, desc = "hop to character"},
        {mode = {"n", "v"}, "<leader>je",
            function ()
                require("hop").hint_words({
                    hint_position = require("hop.hint").HintPosition.END
                })
            end,
        desc = "hop to word end"
        }
    }
}
