return {
    "kdheepak/lazygit.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    keys = {
        {mode = "n", "<leader>gg", "<cmd>LazyGit<cr>", desc = "open lazygit"},
        {mode = "n", "<leader>gp", "<cmd>LazyGitCurrentFile<cr>", desc = "open lazygit on current file"}
    }
}
