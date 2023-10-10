return {
    "fedepujol/move.nvim",
    keys = {
        {mode = "n", "<A-u>", ":MoveLine(1)<cr>", desc = "Move line down"},
        {mode = "n", "<A-i>", ":MoveLine(-1)<cr>", desc = "Move line up"},
        {mode = "v", "<A-u>", ":MoveBlock(1)<cr>", desc = "Move block down"},
        {mode = "v", "<A-i>", ":MoveBlock(-1)<cr>", desc = "Move block up"}
    }
}
