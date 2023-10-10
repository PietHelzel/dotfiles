return {
    "VonHeikemen/lsp-zero.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",

        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-calc"
    },
    config = function()
        -- ===== Setup lsp-zero =====
        local lsp_zero = require("lsp-zero")

        lsp_zero.on_attach(function(_, bufnr)
            lsp_zero.default_keymaps({buffer = bufnr})
        end)

        -- ===== Setup mason =====

        require("mason").setup({
            ui = {
                border = "rounded"
            }
        })
        require("mason-lspconfig").setup({
            handlers = {lsp_zero.default_setup}
        })

        -- ===== Setup luasnip =====

        require("luasnip.loaders.from_vscode").lazy_load()

        -- ===== Setup cmp =====

        local cmp = require("cmp")
        local luasnip = require("luasnip")
        luasnip.setup({
            delete_check_events = "TextChanged",
            region_check_events = "CursorMoved"
        })

        cmp.setup({
            sources = {
                {name = "nvim_lsp", max_item_count = 5, priority = 1000},
                {name = "luasnip", max_item_count = 3, priority = 750},
                {name = "neorg", max_item_count = 3, priority = 500},
                {name = "calc"}
            },
            mapping = cmp.mapping.preset.insert({
                ["<CR>"] = cmp.mapping.confirm({select = false}),
                ["<C-Down>"] = cmp.mapping.scroll_docs(4),
                ["<C-Up>"] = cmp.mapping.scroll_docs(-4),

                -- Super-Tab behaviour
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.locally_jumpable(1) then
                        luasnip.jump(1)
                    else
                        luasnip.unlink_current()
                        fallback()
                    end
                end, {"i", "s"}),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.locally_jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        luasnip.unlink_current()
                        fallback()
                    end
                end, {"i", "s"})
            }),
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered()
            }
        })

        -- ===== Setup autopairs =====

        local cmp_autopairs = require('nvim-autopairs.completion.cmp')
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
}
