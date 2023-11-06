return {
    "DanielPower/scrollEOF.nvim",
    branch = "patch-1",
    enabled = false,
    config = function ()
        vim.o.scrolloff = 8
        require("scrollEOF").setup({
            insert_mode = true
        })
    end
}
