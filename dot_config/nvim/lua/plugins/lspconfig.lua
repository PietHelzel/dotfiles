return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp"
    },
    event = "BufRead",
    config = function ()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require("mason-lspconfig").setup()
        require("mason-lspconfig").setup_handlers({
            function (server_name)
                require("lspconfig")[server_name].setup({
                    capabilities = capabilities
                })
            end
        })

        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(event)
                local bufnr = event.buf
                vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', {buffer=bufnr, desc = "Show documentation"})
                vim.keymap.set('n', '<leader>cd', '<cmd>lua vim.lsp.buf.definition()<cr>', {buffer=bufnr, desc = "Show definition"})
                vim.keymap.set('n', '<leader>cD', '<cmd>lua vim.lsp.buf.declaration()<cr>', {buffer=bufnr, desc = "Goto declaration"})
                vim.keymap.set('n', '<leader>ci', '<cmd>lua vim.lsp.buf.implementation()<cr>', {buffer=bufnr, desc = "Goto implementation"})
                vim.keymap.set('n', '<leader>ct', '<cmd>lua vim.lsp.buf.type_definition()<cr>', {buffer=bufnr, desc = "Goto type definition"})
                vim.keymap.set('n', '<leader>cR', '<cmd>lua vim.lsp.buf.references()<cr>', {buffer=bufnr, desc = "Show references"})
                vim.keymap.set('n', '<leader>cs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', {buffer=bufnr, desc = "Signature help"})
                vim.keymap.set('n', '<leader>cr', '<cmd>lua vim.lsp.buf.rename()<cr>', {buffer=bufnr, desc = "Rename"})
                vim.keymap.set('n', '<leader>cf', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', {buffer=bufnr, desc = "Format"})

                vim.keymap.set('n', '<leader>ce', '<cmd>lua vim.diagnostic.open_float()<cr>', {buffer=bufnr, desc = "Open diagnostic"})
                vim.keymap.set('n', '<leader>cj', '<cmd>lua vim.diagnostic.goto_prev()<cr>', {buffer=bufnr, desc = "Goto previous diagnostic"})
                vim.keymap.set('n', '<leader>ck', '<cmd>lua vim.diagnostic.goto_next()<cr>', {buffer=bufnr, desc = "Goto next diagnostic"})
            end
        })

        -- ===== Style =====
        vim.diagnostic.config {
            float = { border = "rounded" }
        }

        vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
            vim.lsp.handlers.hover,
            {border = 'rounded'}
        )

        vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
            vim.lsp.handlers.signature_help,
            {border = 'rounded'}
        )
    end
}
