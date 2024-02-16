return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-calc",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip"
    },
    event = "InsertEnter",
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
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
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end
            }
        })
    end
}
