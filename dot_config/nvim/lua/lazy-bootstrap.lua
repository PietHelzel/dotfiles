local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        import = "plugins"
    },
    opts = {
        defaults = {
            lazy = true,
            version = "*" -- use latest stable version of plugins
    	},
    },
    change_detection = {enabled = false, notify = false},
    ui = {
        border = "rounded"
    }
})
