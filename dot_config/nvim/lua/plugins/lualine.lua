return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "WhoIsSethDaniel/lualine-lsp-progress.nvim"
    },
    opts = {
        options = {
            component_separators = { left = '|', right = '|'},
            section_separators = { left = '', right = ''},
        },
        sections = {
            lualine_c = {
                "filename",
                {
                    "lsp_progress",
                    spinner_symbols = { '🌑 ', '🌒 ', '🌓 ', '🌔 ', '🌕 ', '🌖 ', '🌗 ', '🌘 ' }
                }
            }
        }
    },
}
