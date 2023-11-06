return {
    "fedepujol/move.nvim",
    keys = {
        {mode = "n", "<A-u>", "<cmd>MoveLine(1)<cr>", desc = "move line down"},
        {mode = "n", "<A-i>", "<cmd>MoveLine(-1)<cr>", desc = "move line up"},
        {mode = "v", "<A-u>", ":MoveBlock(1)<cr>", desc = "move block down"},
        {mode = "v", "<A-i>", ":MoveBlock(-1)<cr>", desc = "move block up"}
    }
}
