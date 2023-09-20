return {
    "jbyuki/nabla.nvim",
    keys = {
        {
            mode = "n", "<leader>p", function ()
                require("nabla").popup({border = "rounded"})
            end
        }
    }
}
