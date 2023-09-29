return {
    "lukas-reineke/indent-blankline.nvim",
    dependencies = {
        "hiphish/rainbow-delimiters.nvim",
    },
    config = function ()
        require("ibl").setup({
            indent = {char = "¦"}
        })
    end
}
