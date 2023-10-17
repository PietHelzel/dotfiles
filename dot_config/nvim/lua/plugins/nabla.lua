return {
    "jbyuki/nabla.nvim",
    keys = {
        {
            mode = "n", "<leader>z", function ()
                require("nabla").popup({border = "rounded"})
            end,
            desc = "preview latex"
        }
    }
}
