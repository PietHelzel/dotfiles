return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    ft = {"norg"},
    cmd = "Neorg",
    keys = {
        {mode = "n", "<leader>nt", "<cmd>Neorg toc right<cr>"}
    },
    opts = {
        load = {
            ["core.defaults"] = {},
            ["core.concealer"] = {config = {
                icons = {
                    code_block = {
                        conceal = true
                    }
                }
            }},
            ["core.export"] = {config = {extensions = "all"}},
            ["core.completion"] = {config = {
                engine = "nvim-cmp",
                name = "neorg"
            }},
        }
    }
}
