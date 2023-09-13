return {
    "kdheepak/lazygit.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    keys = {
        {mode = "n", "<leader>gg", ":LazyGit<cr>"},
        {mode = "n", "<leader>gp", ":LazyGitCurrentFile<cr>"}
    }
}
