return {
    'goolord/alpha-nvim',
    dependencies = {
        "natecraddock/workspaces.nvim",
        "nvim-tree/nvim-web-devicons",
        "nvim-lua/plenary.nvim"
    },
    event = "VimEnter",
    config = function ()
        local button = require("alpha.themes.dashboard").button
        local Path = require("plenary.path")

        local function get_header()
            local header = {
                "                                                     ",
                "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
                "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
                "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
                "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
                "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
                "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
                "                                                     ",
            }

            return {
                type = "text",
                val = header,
                opts = {position = "center"}
            }
        end

        local function get_startuptime()
            return {
                type = "text",
                val = "Startup Time: Loading...",
                opts = {position = "center"}
            }
        end

        local function get_info()
            local lazy_stats = require("lazy").stats()


            local total_plugins = " " .. lazy_stats.loaded .. "/" .. lazy_stats.count .. " packages loaded"
            local datetime = os.date(" %A %B %d")
            local version = vim.version()
            local nvim_version_info = " " .. version.major .. "." .. version.minor .. "." .. version.patch

            local info_string = datetime .. "  |  " .. total_plugins .. "  |  " .. nvim_version_info

            return {
                type = "text",
                val = info_string,
                opts = {position = "center"},
            }
        end

        local function get_links()
            return {
                type = "group",
                val = {
                    {type = "text", val = "Tools", opts = {
                        hl = "SpecialComment",
                        position = "center"
                    }},
                    button("l", "💤 Lazy", "<cmd>Lazy<cr>"),
                    button("m", "🔨 Mason", "<cmd>Mason<cr>"),
                    button("f", "🔭 Find Files", "<cmd>Telescope find_files<cr>"),
                    button("s", "🔎 Search", "<cmd>Telescope live_grep<cr>")
                }
            }
        end

        local function get_workspaces()
            local workspaces = require("workspaces").get()

            local tbl = {
                type = "group",
                val = {
                    {
                        type = "text",
                        val = "Projects",
                        opts = {
                            hl = "SpecialComment",
                            position = "center"
                        }
                    }
                }
            }

            for i, workspace in ipairs(workspaces) do
                if i > 9 then
                    break
                end

                local path = Path:new(workspace.path):normalize("~")

                local label = workspace.name .. " (" .. path .. ")"
                local command = "<cmd>WorkspacesOpen " .. workspace.name .. "<cr>"

                local b = button(tostring(i), label, command)

                table.insert(tbl.val, b)
            end

            return tbl
        end

        local theme = require("alpha.themes.theta")
        theme.config.layout = {
            {type = "padding", val = 4},
            get_header(),
            {type = "padding", val = 2},
            get_startuptime(),
            {type = "padding", val = 1},
            get_info(),
            {type = "padding", val = 2},
            get_links(),
            {type = "padding", val = 2},
            get_workspaces()
        }
        require("alpha").setup(theme.config)

        vim.api.nvim_create_autocmd("UIEnter", {
            callback = function()
                local stats = require("lazy").stats()
                local ms = math.floor(stats.startuptime * 100) / 100
                theme.config.layout[4].val = "Startup Time: " .. ms .. "ms"
                pcall(vim.cmd.AlphaRedraw)
            end,
        })

    end
}
