return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim"
    },
    cmd = "Neotree",
    opts = {
        popup_border_style = "rounded",
        window = {
            width = 32
        },
        default_component_configs = {
            name = {
                use_git_status_colors = false
            },
            git_status = {
                symbols = {
                  -- Change type
                  added     = "✚",
                  modified  = "",
                  deleted   = "✖",
                  renamed   = "󰁕",
                  untracked = "",
                  ignored   = "",
                  unstaged  = "󰄱",
                  staged    = "",
                  conflict  = "",
                }
            }
        }
    },
    keys = {
        {mode = "n", "<leader>e", "<cmd>Neotree<cr>", desc = "focus file tree"},
        {mode = "n", "<leader><S-e>", "<cmd>Neotree close<cr>", desc = "toggle file tree"}
    }
}
