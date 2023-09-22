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
        "saadparwaiz1/cmp_luasnip"
    },
    config = function()
        -- ===== Setup lsp-zero =====
        local lsp_zero = require("lsp-zero")

        lsp_zero.on_attach(function(client, bufnr)
            lsp_zero.default_keymaps({buffer = bufnr})
        end)

        -- ===== Setup mason =====

        require("mason").setup({})
        require("mason-lspconfig").setup({
            handlers = {lsp_zero.default_setup}
        })

        -- ===== Setup luasnip =====

        require("luasnip.loaders.from_vscode").lazy_load()

        -- ===== Setup cmp =====

        local cmp = require("cmp")
        local luasnip = require("luasnip")
        luasnip.setup({
            history = false
        })

        cmp.setup({
            sources = {
                {name = "nvim_lsp"},
                {name = "luasnip"}
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
    end
}
