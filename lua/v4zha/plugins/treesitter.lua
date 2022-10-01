local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end
treesitter.setup({
    ensure_installed = {"c", "lua", "rust"},
    auto_install = true,
    highlight = {
        enable = true
    },
    autopairs = {
        enable = true
    },
    indent = {
        enable = true
    }
})
