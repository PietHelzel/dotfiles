return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    lazy = false,
    config = function()
        local lspconfig = require("lspconfig")
        require("mason").setup()

        require("mason-lspconfig").setup({})
        require("mason-lspconfig").setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({})
            end
        })
    end
}
