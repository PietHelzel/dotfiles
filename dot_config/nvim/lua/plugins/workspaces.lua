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
                -- local nvtree = require("nvim-tree.api").tree
                --
                -- if nvtree.is_visible() then
                --     nvtree.focus()
                -- else
                --     nvtree.toggle(false, true)
                -- end

                local neotree = require("neo-tree.command")

                local manager = require("neo-tree.sources.manager")
                local windid = manager.get_state("filesystem").winid

                if windid == nil then
                    neotree.execute({action = "show"})
                else
                    neotree.execute({action = "focus"})
                end
            end
        }
    },
}
