return {
    "natecraddock/workspaces.nvim",
    dependencies = {
        "nvim-tree/nvim-tree.lua"
    },
    opts = {
        sort = true,
        mru_sort = true,
        hooks = {
            open = function ()
                require("nvim-tree.api").tree.toggle(false, true)
            end
        }
    },
}
