return {
    "jbyuki/nabla.nvim",
    keys = {
        {
            mode = "n", "<leader>r", function ()
                require("nabla").popup({border = "rounded"})
            end,
            desc = "preview latex"
        }
    }
}
