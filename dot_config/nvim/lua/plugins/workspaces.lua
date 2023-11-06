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
                local nvtree = require("nvim-tree.api").tree

                if nvtree.is_visible() then
                    nvtree.focus()
                else
                    nvtree.toggle(false, true)
                end
            end
        }
    },
}
