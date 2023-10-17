return {
    "folke/which-key.nvim",
    config = function ()
        vim.o.timeout = true
        vim.o.timeoutlen = 500

        require("which-key").setup({
            window = {
                border = "rounded"
            }
        })

        require("which-key").register({
            ["<leader>"] = {
                f = {
                    name = "Telescope"
                },
                n = {
                    name = "Neorg"
                },
                g = {
                    name = "Git"
                },
                j = {
                    name = "Hop (extended)"
                },
                t = {
                    name = "Trouble"
                },
                b = {
                    name = "Buffers"
                },
                l = {
                    name = "Lspsaga"
                }
            }
        })
    end,
}
