return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    ft = {"norg"},
    cmd = "Neorg",
    keys = {
        {mode = "n", "<leader>nt", ":Neorg toc right<cr>"}
    },
    opts = {
        load = {
            ["core.defaults"] = {},
            ["core.concealer"] = {},
            ["core.export"] = {config = {extensions = "all"}},
            ["core.completion"] = {config = {
                engine = "nvim-cmp",
                name = "neorg"
            }}
        }
    }
}
