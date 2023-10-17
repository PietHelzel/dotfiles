return {
    "Aasim-A/scrollEOF.nvim",
    config = function ()
        vim.o.scrolloff = 4
        require("scrollEOF").setup({
            insert_mode = true
        })
    end
}
